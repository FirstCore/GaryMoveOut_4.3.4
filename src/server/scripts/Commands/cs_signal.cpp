#include "ScriptMgr.h"
#include "ObjectMgr.h"
#include "Chat.h"
#include "WorldSession.h"

class signal_commandscript : public CommandScript
{
public:
    signal_commandscript() : CommandScript("signal_commandscript") { }

    ChatCommand* GetCommands() const
    {
        static ChatCommand signalCommandTable[] =
        {
            { "quete",          SEC_PLAYER,     false, &HandleSignalQuete,                 "", NULL },
            { "bug",            SEC_MODERATOR,  false, &HandleSignalBug,                   "", NULL },
            { "ok",             SEC_MODERATOR,  false, &HandleSignalOk,                    "", NULL },
            { "list",           SEC_MODERATOR,  false, &HandleSignalList,                  "", NULL },
            { NULL,             0,              false, NULL,                               "", NULL }
        };
        static ChatCommand commandTable[] =
        {
            { "signal",         SEC_MODERATOR,  false, NULL,                 "", signalCommandTable },
            { NULL,             0,              false, NULL,                               "", NULL }
        };
        return commandTable;
    }

    static bool HandleSignalQuete(ChatHandler* handler, const char* args)
    {
        char* cId = handler->extractKeyFromLink((char*) args, "Hquest");
        if (!cId)
            return false;
        uint32 entry = atol(cId);

        Quest const* pQuest = sObjectMgr->GetQuestTemplate(entry);
        if (!pQuest)
        {
            handler->PSendSysMessage(LANG_COMMAND_QUEST_NOTFOUND, entry);
            handler->SetSentErrorMessage(true);
            return false;
        }

        QueryResult queststatus = WorldDatabase.PQuery("SELECT status, commentaire FROM quest_signal WHERE id = '%u';", entry);
        if (!queststatus) {
            handler->PSendSysMessage("Une erreur est survenu dans la base de donnée (ID:%u).", entry);
            handler->SetSentErrorMessage(true);
            return false;
        }

        switch ((*queststatus)[0].GetUInt32()) {
            case 0:  {  // Quête non testé
                PreparedStatement* stmt = WorldDatabase.GetPreparedStatement(WORLD_UPDATE_QUEST_SIGNAL);
                stmt->setUInt32(0, 1);
                stmt->setString(1, handler->GetSession()->GetPlayer()->GetName());
                stmt->setString(2, (*queststatus)[1].GetString());
                stmt->setUInt32(3, entry);
                WorldDatabase.Execute(stmt);
                handler->PSendSysMessage("La quête #%u vient d'être signalée.", entry);
                return true;
            }
            case 1:  {  // Quête signalé
                handler->PSendSysMessage("La quête #%u est déjà signalée et en attente de tests.", entry);
                return true;
            }
            case 2:  {  // Quête bugé
                handler->PSendSysMessage("La quête #%u est infaisable. Nous la validons.", entry);
                    // DEBUT - GAIN QUETES
                    Player* player = handler->GetSession()->GetPlayer();
                    for (uint8 x = 0; x < QUEST_ITEM_OBJECTIVES_COUNT; ++x)
                    {
                        uint32 id = pQuest->RequiredItemId[x];
                        uint32 count = pQuest->RequiredItemCount[x];
                        if (!id || !count)
                            continue;

                        uint32 curItemCount = player->GetItemCount(id, true);

                        ItemPosCountVec dest;
                        uint8 msg = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, id, count-curItemCount);
                        if (msg == EQUIP_ERR_OK)
                        {
                            Item* item = player->StoreNewItem(dest, id, true);
                            player->SendNewItem(item, count-curItemCount, true, false);
                        }
                    }

                    // All creature/GO slain/casted (not required, but otherwise it will display "Creature slain 0/10")
                    for (uint8 i = 0; i < QUEST_OBJECTIVES_COUNT; ++i)
                    {
                        int32 creature = pQuest->RequiredNpcOrGo[i];
                        uint32 creaturecount = pQuest->RequiredNpcOrGoCount[i];

                        if (uint32 spell_id = pQuest->RequiredSpellCast[i])
                        {
                            for (uint16 z = 0; z < creaturecount; ++z)
                                player->CastedCreatureOrGO(creature, 0, spell_id);
                        }
                        else if (creature > 0)
                        {
                            if (CreatureTemplate const* cInfo = sObjectMgr->GetCreatureTemplate(creature))
                                for (uint16 z = 0; z < creaturecount; ++z)
                                    player->KilledMonster(cInfo, 0);
                        }
                        else if (creature < 0)
                        {
                            for (uint16 z = 0; z < creaturecount; ++z)
                                player->CastedCreatureOrGO(creature, 0, 0);
                        }
                    }

                    // If the quest requires reputation to complete
                    if (uint32 repFaction = pQuest->GetRepObjectiveFaction())
                    {
                        uint32 repValue = pQuest->GetRepObjectiveValue();
                        uint32 curRep = player->GetReputationMgr().GetReputation(repFaction);
                        if (curRep < repValue)
                            if (FactionEntry const* factionEntry = sFactionStore.LookupEntry(repFaction))
                                player->GetReputationMgr().SetReputation(factionEntry, repValue);
                    }

                    // If the quest requires a SECOND reputation to complete
                    if (uint32 repFaction = pQuest->GetRepObjectiveFaction2())
                    {
                        uint32 repValue2 = pQuest->GetRepObjectiveValue2();
                        uint32 curRep = player->GetReputationMgr().GetReputation(repFaction);
                        if (curRep < repValue2)
                            if (FactionEntry const* factionEntry = sFactionStore.LookupEntry(repFaction))
                                player->GetReputationMgr().SetReputation(factionEntry, repValue2);
                    }

                    // If the quest requires money
                    int32 ReqOrRewMoney = pQuest->GetRewOrReqMoney();
                    if (ReqOrRewMoney < 0)
                        player->ModifyMoney(-ReqOrRewMoney);

                    player->CompleteQuest(entry);
                    // FIN - GAIN QUETES
                return true;
            }
            case 3:  {  // Quête faisable
                handler->PSendSysMessage("La quête #%u est faisable.", entry);
                return true;
            }
            default: {  // Erreur récupération status
                handler->PSendSysMessage("Une erreur est survenu dans la base de donnée (ID:%u).", entry);
                handler->SetSentErrorMessage(true);
                return false;
            }
        }
    }

    static bool HandleSignalBug(ChatHandler* handler, const char* args)       // Status 2
    {
        char* cId = handler->extractKeyFromLink((char*) args, "Hquest");
        char* commentaire = strtok(NULL, "");
        if (!cId || !commentaire)
            return false;
        uint32 entry = atol(cId);

        Quest const* pQuest = sObjectMgr->GetQuestTemplate(entry);
        if (!pQuest)
        {
            handler->PSendSysMessage(LANG_COMMAND_QUEST_NOTFOUND, entry);
            handler->SetSentErrorMessage(true);
            return false;
        }

        handler->PSendSysMessage("La quête #%u est passée en infaisable.", entry);
        PreparedStatement* stmt = WorldDatabase.GetPreparedStatement(WORLD_UPDATE_QUEST_SIGNAL);
        stmt->setUInt32(0, 2);
        stmt->setString(1, handler->GetSession()->GetPlayer()->GetName());
        stmt->setString(2, commentaire);
        stmt->setUInt32(3, entry);
        WorldDatabase.Execute(stmt);
        return true;
    }

    static bool HandleSignalOk(ChatHandler* handler, const char* args)        // Status 1
    {
        char* cId = handler->extractKeyFromLink((char*) args, "Hquest");
        if (!cId)
            return false;
        uint32 entry = atol(cId);

        Quest const* pQuest = sObjectMgr->GetQuestTemplate(entry);
        if (!pQuest)
        {
            handler->PSendSysMessage(LANG_COMMAND_QUEST_NOTFOUND, entry);
            handler->SetSentErrorMessage(true);
            return false;
        }

        handler->PSendSysMessage("La quête #%u est passée en faisable.", entry);
        PreparedStatement* stmt = WorldDatabase.GetPreparedStatement(WORLD_UPDATE_QUEST_SIGNAL);
        stmt->setUInt32(0, 3);
        stmt->setString(1, handler->GetSession()->GetPlayer()->GetName());
        stmt->setString(2, "");
        stmt->setUInt32(3, entry);
        WorldDatabase.Execute(stmt);
        return true;
    }

    static bool HandleSignalList(ChatHandler* handler, const char* /*args*/)  // Liste status 1
    {
        handler->PSendSysMessage("Liste des quêtes à vérifier :");

        QueryResult result = WorldDatabase.PQuery("SELECT id, date FROM quest_signal WHERE status=1 ORDER BY date ASC;");
        if (!result) {
            handler->PSendSysMessage("Aucune quête signalée à vérifier");
            return true;
        }
        do {
            Field* fields = result->Fetch();
            handler->PSendSysMessage("Le %s | ID %u", fields[1].GetCString(), fields[0].GetUInt32());
        } while (result->NextRow());
        return true;
    }
};

void AddSC_signal_commandscript()
{
    new signal_commandscript();
}
    