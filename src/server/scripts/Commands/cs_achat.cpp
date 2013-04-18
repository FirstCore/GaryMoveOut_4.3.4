#include "ScriptMgr.h"
#include "Util.h"

class achat_commandscript: public CommandScript
{
public:
    achat_commandscript() : CommandScript("achat_commandscript") { }

    ChatCommand* GetCommands() const
    {
        static ChatCommand commandTable[] =
        {
            { "achat",          SEC_PLAYER,     true,  &HandleAchatCommand,                "", NULL },
            { NULL,             0,              false, NULL,                               "", NULL }
        };
        return commandTable;
    }

    static bool HandleAchatCommand(ChatHandler* handler, const char* args)
    {
        if (!*args)
            return false;

        // Récupération des informations de session et d'achat
        Player* player = handler->GetSession()->GetPlayer();
        char* charDemande = strtok((char*) args, " ");
        char* charNombres = strtok(NULL, " ");

        // Récupération du nombre d'item demandé
        uint32 nombre = 1;
        if (charNombres && isNumeric(charNombres) && atoi(charNombres) >= 1)
            nombre = atoi(charNombres);

        if (!strcmp(charDemande, "level"))   {
            // Récupération du niveau
            uint32 level = player->getLevel();
            uint32 addlevel;

            // Paiement et changement de niveau suivant le niveau actuel
            if (level >=  1 && level <= 10) addlevel = 9;
            if (level >= 11 && level <= 20) addlevel = 8;
            if (level >= 21 && level <= 30) addlevel = 7;
            if (level >= 31 && level <= 40) addlevel = 6;
            if (level >= 41 && level <= 50) addlevel = 5;
            if (level >= 51 && level <= 60) addlevel = 4;
            if (level >= 61 && level <= 70) addlevel = 3;
            if (level >= 71 && level <= 80) addlevel = 2;
            if (level >= 81 && level <= 84) addlevel = 1;
            if (level >= 85 || level <=  0) {
                ChatHandler(player->GetSession()).PSendSysMessage("Vous ne pouvez plus acheter de niveau !");
                return true;
            }

            if (!player->takeCredit(1000))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Erreur : Vous n'avez pas assez de points night.");
                return true;
            }

            // Ajout des niveaux, mise en place des talents et mise à zero de l'experience
            player->GiveLevel(level + addlevel);
            player->InitTalentForLevel();
            player->SetUInt32Value(PLAYER_XP, 0);

            // Enregistrement de l'opération
            sLog->outInfo(LOG_FILTER_BOUTIQUE, ".achat level [Player: %s (GUID: %u) Account: %u (IP: %s)]", player->GetName(), player->GetGUIDLow(), player->GetSession()->GetAccountId(), player->GetSession()->GetRemoteAddress().c_str());
            return true;
        }
        if (!strcmp(charDemande, "po")) {
            // Paiement et ajout des pièces de monnaie
            if (!player->takeCredit(1000 * nombre))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Erreur : Vous n'avez pas assez de points night.");
                return true;
            }

            player->ModifyMoney(10000000 * nombre);

            // Enregistrement de l'opération
            sLog->outInfo(LOG_FILTER_BOUTIQUE, ".achat po %u [Player: %s (GUID: %u) Account: %u (IP: %s)]", nombre, player->GetName(), player->GetGUIDLow(), player->GetSession()->GetAccountId(), player->GetSession()->GetRemoteAddress().c_str());
            return true;
        }
        if (!strcmp(charDemande, "sexe"))    {
            // Déclaration d'une fonction de genre
            Gender gender;

            // Paiement et modification de sexe
            if (!player->takeCredit(1000))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Erreur : Vous n'avez pas assez de points night.");
                return true;
            }

            if (player->getGender() == GENDER_MALE)   gender = GENDER_FEMALE;
            if (player->getGender() == GENDER_FEMALE) gender = GENDER_MALE;

            player->SetByteValue(UNIT_FIELD_BYTES_0, 2, gender);
            player->SetByteValue(PLAYER_BYTES_3, 0, gender);
            player->InitDisplayIds();

            // Enregistrement de l'opération
            sLog->outInfo(LOG_FILTER_BOUTIQUE, ".achat sexe [Player: %s (GUID: %u) Account: %u (IP: %s)]", player->GetName(), player->GetGUIDLow(), player->GetSession()->GetAccountId(), player->GetSession()->GetRemoteAddress().c_str());
            return true;
        }
        if (!strcmp(charDemande, "rename"))  {
            // Paiement et modification de pseudo
            if (!player->takeCredit(1000))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Erreur : Vous n'avez pas assez de points night.");
                return true;
            }

            player->SetAtLoginFlag(AT_LOGIN_RENAME);
            CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '1' WHERE guid = '%u'", player->GetGUIDLow());

            // Information et enregistrement de l'opération
            ChatHandler(player->GetSession()).PSendSysMessage("Votre changement de pseudo sera disponible à la prochaine connexion du personnage.");
            sLog->outInfo(LOG_FILTER_BOUTIQUE, ".achat rename [Player: %s (GUID: %u) Account: %u (IP: %s)]", player->GetName(), player->GetGUIDLow(), player->GetSession()->GetAccountId(), player->GetSession()->GetRemoteAddress().c_str());
            return true;
        }
        if (!strcmp(charDemande, "skin"))    {
            // Paiement et modification de skin
            if (!player->takeCredit(1000))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Erreur : Vous n'avez pas assez de points night.");
                return true;
            }

            player->SetAtLoginFlag(AT_LOGIN_CUSTOMIZE);
            CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '8' WHERE guid = '%u'", player->GetGUIDLow());

            // Information et enregistrement de l'opération
            ChatHandler(player->GetSession()).PSendSysMessage("Votre changement d'apparence sera disponible à la prochaine connexion du personnage.");
            sLog->outInfo(LOG_FILTER_BOUTIQUE, ".achat skin [Player: %s (GUID: %u) Account: %u (IP: %s)]", player->GetName(), player->GetGUIDLow(), player->GetSession()->GetAccountId(), player->GetSession()->GetRemoteAddress().c_str());
            return true;
        }
        if (!strcmp(charDemande, "faction")) {
            // Paiement et modification de faction
            if (!player->takeCredit(2000))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Erreur : Vous n'avez pas assez de points night.");
                return true;
            }

            player->SetAtLoginFlag(AT_LOGIN_CHANGE_FACTION);
            CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '64' WHERE guid = %u", player->GetGUIDLow());

            // Information et enregistrement de l'opération
            ChatHandler(player->GetSession()).PSendSysMessage("Votre changement de faction sera disponible à la prochaine connexion du personnage.");
            sLog->outInfo(LOG_FILTER_BOUTIQUE, ".achat faction [Player: %s (GUID: %u) Account: %u (IP: %s)]", player->GetName(), player->GetGUIDLow(), player->GetSession()->GetAccountId(), player->GetSession()->GetRemoteAddress().c_str());
            return true;
        }
        if (!strcmp(charDemande, "race"))    {
            // Paiement et modification de race
            if (!player->takeCredit(1000))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Erreur : Vous n'avez pas assez de points night.");
                return true;
            }

            player->SetAtLoginFlag(AT_LOGIN_CHANGE_RACE);
            CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '128' WHERE guid = %u", player->GetGUIDLow());

            // Information et enregistrement de l'opération
            ChatHandler(player->GetSession()).PSendSysMessage("Votre changement de race sera disponible à la prochaine connexion du personnage.");
            sLog->outInfo(LOG_FILTER_BOUTIQUE, ".achat race [Player: %s (GUID: %u) Account: %u (IP: %s)]", player->GetName(), player->GetGUIDLow(), player->GetSession()->GetAccountId(), player->GetSession()->GetRemoteAddress().c_str());
            return true;
        }
        if (isNumeric(charDemande))          {
            // Récupération des informations en base de données
            QueryResult result = LoginDatabase.PQuery("SELECT itemId, itemName, itemPrice, %u AS count, (itemPrice * %u) AS totalPrice FROM boutique_cata WHERE id = %s AND active = 1;", nombre, nombre, charDemande);
            if (!result) {
                ChatHandler(player->GetSession()).SendSysMessage("L'article que vous demandez n'existe pas.");
                return false;
            }

            // Récupération des noms et ID
            std::string SItemName    = (*result)[1].GetString();
            std::string SItemCount   = (*result)[3].GetString();
            std::string STotalPrice  = (*result)[4].GetString();
            uint32 UItemID           = (*result)[0].GetUInt32();
            uint32 UItemPrice        = (*result)[2].GetUInt32();
            uint32 UItemCount        = (*result)[3].GetUInt32();

            // Paiement et création du mail
            if (!player->takeCredit(UItemPrice * UItemCount))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Erreur : Vous n'avez pas assez de points night.");
                return true;
            }

            // Déclarations des headers de mail
            MailSender sender(MAIL_NORMAL, player->GetSession() ? player->GetGUIDLow() : 0, MAIL_STATIONERY_GM);
            std::string sujet = "Boutique Night-Attitude";
            std::string texte = "Bonjour !\n\nVoici ci-joint votre commande d'un montant de " + STotalPrice + " points night qui viennnent d'être décomptés de votre compte :\n - " + SItemCount + " x " + SItemName + "\n\nBonne continuation,\nL'équipe Night-Attitude";

            // Création des stacks
            typedef std::pair<uint32,uint32> ItemPair;
            typedef std::list< ItemPair > ItemPairs;
            ItemPairs items;

            ItemTemplate const* item_proto = sObjectMgr->GetItemTemplate(UItemID);
            while (UItemCount > item_proto->GetMaxStackSize())
            {
                items.push_back(ItemPair(UItemID, item_proto->GetMaxStackSize()));
                UItemCount -= item_proto->GetMaxStackSize();
            }
            items.push_back(ItemPair(UItemID, UItemCount));

            // Envoi du mail et information du joueur
            MailDraft draft(sujet, texte);
            SQLTransaction trans = CharacterDatabase.BeginTransaction();
            for (ItemPairs::const_iterator itr = items.begin(); itr != items.end(); ++itr)
            {
                if (Item* item = Item::CreateItem(itr->first, itr->second, player))
                {
                    item->SaveToDB(trans);
                    draft.AddItem(item);
                }
            }
            draft.SendMailTo(trans, MailReceiver(player, GUID_LOPART(player->GetGUIDLow())), sender);
            CharacterDatabase.CommitTransaction(trans);

            // Information et enregistrement de l'opération
            ChatHandler(player->GetSession()).PSendSysMessage("Votre demande est disponible dans votre boîte aux lettres.");
            sLog->outInfo(LOG_FILTER_BOUTIQUE, ".achat %s %u [Player: %s (GUID: %u) Account: %u (IP: %s)]", charDemande, nombre, player->GetName(), player->GetGUIDLow(), player->GetSession()->GetAccountId(), player->GetSession()->GetRemoteAddress().c_str());
            return true;
        }

        ChatHandler(player->GetSession()).PSendSysMessage("Erreur lors de votre achat, merci de recommencer et de contacter un MJ si celà se reproduit.");
        return false;
    }
};

void AddSC_achat_commandscript()
{
    new achat_commandscript();
}
