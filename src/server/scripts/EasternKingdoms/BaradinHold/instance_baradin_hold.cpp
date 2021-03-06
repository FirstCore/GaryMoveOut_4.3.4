/*
* Copyright (C) 2011 - 2012 ArkCORE <http://www.arkania.net/>
*
* This program is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License as published by the
* Free Software Foundation; either version 3 of the License, or (at your
* option) any later version.
*
* This program is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
* more details.
*
* You should have received a copy of the GNU General Public License along
* with this program. If not, see <http://www.gnu.org/licenses/>.
*/

#include"ScriptPCH.h"
#include"baradin_hold.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "InstanceScript.h"
#include "Spell.h"

#define ENCOUNTERS 3

class instance_baradin_hold: public InstanceMapScript
{
public:
    instance_baradin_hold() : InstanceMapScript("instance_baradin_hold", 757) { }

    InstanceScript* GetInstanceScript(InstanceMap *map) const
    {
        return new instance_baradin_hold_InstanceMapScript(map);
    }

    struct instance_baradin_hold_InstanceMapScript: public InstanceScript
    {
        instance_baradin_hold_InstanceMapScript(InstanceMap *map) : InstanceScript(map) { }
		
		uint32 Encounter[ENCOUNTERS];
		
		uint64 argaloth;
		uint64 occuthar;
		uint64 alizabal;

        void Initialize()
        {
            argaloth = 0;
			occuthar = 0;
			alizabal = 0;
			
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
				case CREATURE_ARGALOTH: 
					argaloth = creature->GetGUID(); 
					break;
				case CREATURE_OCCUTHAR: 
					occuthar = creature->GetGUID(); 
					break;
				case CREATURE_ALIZABAL: 
					alizabal = creature->GetGUID(); 
					break;
            }
        }

        uint64 GetData64(uint32 identifier)
		{
            switch (identifier)
            {
                case DATA_ARGALOTH:
                    return argaloth;
                case DATA_OCCUTHAR:
                    return occuthar;
                case DATA_ALIZABAL:
                    return alizabal;
            }
            return 0;
        }
		
		void SetData(uint32 type, uint32 data)
        {
            switch (type)
            {
                case DATA_ARGALOTH:
                    Encounter[0] = data;
                    break;
                case DATA_OCCUTHAR:
                    Encounter[1] = data;
                    break;
                case DATA_ALIZABAL:
                    Encounter[2] = data;
                    break;
            }
            if (data == DONE)
                SaveToDB();
        }
		
		uint32 GetData(uint32 type)
        {
            switch (type)
            {
                case DATA_ARGALOTH:
                    return Encounter[0];
                case DATA_OCCUTHAR:
                    return Encounter[1];
                case DATA_ALIZABAL:
                    return Encounter[2];
            }
            return 0;
        }
		
		std::string GetSaveData()
        {
            OUT_SAVE_INST_DATA;

            std::string str_data;
            std::ostringstream saveStream;
            saveStream << "B C" << Encounter[0] << " " << Encounter[1]  << " " << Encounter[2];
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
            uint16 data0, data1, data2;

            std::istringstream loadStream(in);
            loadStream >> dataHead1 >> dataHead2 >> data0 >> data1 >> data2;

            if (dataHead1 == 'B' && dataHead2 == 'C')
            {
                Encounter[0] = data0;
                Encounter[1] = data1;
                Encounter[2] = data2;
                
                for (uint8 i=0; i < ENCOUNTERS; ++i)
                    if (Encounter[i] == IN_PROGRESS)
                        Encounter[i] = NOT_STARTED;
            }
            else OUT_LOAD_INST_DATA_FAIL;

            OUT_LOAD_INST_DATA_COMPLETE;
        }
    
	};
};

void AddSC_instance_baradin_hold()
{
    new instance_baradin_hold();
}