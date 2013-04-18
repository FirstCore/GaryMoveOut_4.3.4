/*
* Copyright (C) 2011 True Blood <http://www.trueblood-servers.com/>
* By Asardial
*
* Copyright (C) 2013 Night-Attitude <http://www.night-attitude.com/>
* By Mikadmin
*/

#include "ScriptPCH.h"
#include "blackrock_caverns.h"

#define ENCOUNTERS 5

/*Boss Encounters
  Rom'Ogg Bonecrusher
  Corla, Herald of Twilight
  Karsh Steelbender
  Beauty
  Ascendant Lord Obsidius
*/

class instance_blackrock_caverns : public InstanceMapScript
{
public:
    instance_blackrock_caverns() : InstanceMapScript("instance_blackrock_caverns", 645) { }

    InstanceScript* GetInstanceScript(InstanceMap* map) const
    {
        return new instance_blackrock_cavernsInstanceMapScript(map);
    }

    struct instance_blackrock_cavernsInstanceMapScript : public InstanceScript
    {
        instance_blackrock_cavernsInstanceMapScript(InstanceMap* map) : InstanceScript(map) { }

        uint32 Encounter[ENCOUNTERS];

        uint64 romoggBonecrusher;
        uint64 corla;
        uint64 karshSteelbender;
        uint64 beauty;
        uint64 ascendantLordObsidius;

        void Initialize()
        {
             romoggBonecrusher = 0;
             corla = 0;
             karshSteelbender = 0;
             beauty = 0;
             ascendantLordObsidius = 0;

             for (uint8 i = 0 ; i < ENCOUNTERS; ++i)
                 Encounter[i] = NOT_STARTED;
        }

        bool IsEncounterInProgress() const
        {
            for (uint8 i = 0; i < ENCOUNTERS; ++i)
            {
                if (Encounter[i] == NOT_STARTED)
                    return true;
            }
            return false;
        }

        void OnCreatureCreate(Creature* creature, bool)
        {
            switch (creature->GetEntry())
            {
                case BOSS_ROMOGG_BONECRUSHER:
                    romoggBonecrusher = creature->GetGUID();
                    break;
                case BOSS_CORLA:
                    corla = creature->GetGUID();
                    break;
                case BOSS_KARSH_STEELBENDER:
                    karshSteelbender = creature->GetGUID();
                    break;
                case BOSS_BEAUTY:
                    beauty = creature->GetGUID();
                    break;
                case BOSS_ASCENDANT_LORD_OBSIDIUS:
                    ascendantLordObsidius = creature->GetGUID();
                    break;
            }
        }

        uint64 getData64(uint32 identifier)
        {
            switch (identifier)
            {
                case DATA_ROMOGG_BONECRUSHER:
                    return romoggBonecrusher;
                case DATA_CORLA:
                    return corla;
                case DATA_KARSH_STEELBENDER:
                    return karshSteelbender;
                case DATA_BEAUTY:
                    return beauty;
                case DATA_ASCENDANT_LORD_OBSIDIUS:
                    return ascendantLordObsidius;
            }
            return 0;
        }

        void SetData(uint32 type, uint32 data)
        {
            switch (type)
            {
                case DATA_ROMOGG_BONECRUSHER_EVENT:
                    Encounter[0] = data;
                    break;
                case DATA_CORLA_EVENT:
                    Encounter[1] = data;
                    break;
                case DATA_KARSH_STEELBENDER_EVENT:
                    Encounter[2] = data;
                    break;
                case DATA_BEAUTY_EVENT:
                    Encounter[3] = data;
                    break;
                case DATA_ASCENDANT_LORD_OBSIDIUS_EVENT:
                    Encounter[4] = data;
                    break;
            }
            if (data == DONE)
                SaveToDB();
        }

        uint32 GetData(uint32 type)
        {
            switch (type)
            {
                case DATA_ROMOGG_BONECRUSHER_EVENT:
                    return Encounter[0];
                case DATA_CORLA_EVENT:
                    return Encounter[1];
                case DATA_KARSH_STEELBENDER_EVENT:
                    return Encounter[2];
                case DATA_BEAUTY_EVENT:
                    return Encounter[3];
                case DATA_ASCENDANT_LORD_OBSIDIUS_EVENT:
                    return Encounter[4];
            }
            return 0;
        }

        std::string GetSaveData()
        {
            OUT_SAVE_INST_DATA;

            std::string str_data;
            std::ostringstream saveStream;
            saveStream << "B C" << Encounter[0] << " " << Encounter[1]  << " " << Encounter[2]  << " " << Encounter[3] << " " << Encounter[4];
            str_data = saveStream.str();

            OUT_SAVE_INST_DATA_COMPLETE;
            return str_data;
        }

        void Load(const char* in)
        {
            if (!in)
            {
                OUT_LOAD_INST_DATA_FAIL;
                return;
            }

            OUT_LOAD_INST_DATA(in);

            char dataHead1, dataHead2;
            uint16 data0, data1, data2, data3, data4;

            std::istringstream loadStream(in);
            loadStream >> dataHead1 >> dataHead2 >> data0 >> data1 >> data2 >> data3 >> data4;

            if (dataHead1 == 'B' && dataHead2 == 'C')
            {
                Encounter[0] = data0;
                Encounter[1] = data1;
                Encounter[2] = data2;
                Encounter[3] = data3;
                Encounter[4] = data4;

                for (uint8 i=0; i < ENCOUNTERS; ++i)
                    if (Encounter[i] == IN_PROGRESS)
                        Encounter[i] = NOT_STARTED;
            }
            else OUT_LOAD_INST_DATA_FAIL;

            OUT_LOAD_INST_DATA_COMPLETE;
        }
    };
};

void AddSC_instance_blackrock_caverns()
{
    new instance_blackrock_caverns();
}