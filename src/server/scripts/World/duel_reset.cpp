/*
 * Copyright (C) 2008-2015 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
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

#include "ScriptMgr.h"
#include "Player.h"

class DuelResetScript : public PlayerScript
{
    public:
        DuelResetScript() : PlayerScript("DuelResetScript") { }

        // Called when a duel starts (after 3s countdown)
        void OnDuelStart(Player* player1, Player* player2) override
        {
            // Cooldowns reset
            if (sWorld->getBoolConfig(CONFIG_RESET_DUEL_COOLDOWNS))
            {
                player1->GetSpellHistory()->SaveCooldownStateBeforeDuel();
                player2->GetSpellHistory()->SaveCooldownStateBeforeDuel();

                player1->RemoveArenaSpellCooldowns(true);
                player2->RemoveArenaSpellCooldowns(true);
            }

            // Health and mana reset
            if (sWorld->getBoolConfig(CONFIG_RESET_DUEL_HEALTH_MANA))
            {
                player1->SaveHealthBeforeDuel();
                player1->SetHealth(player1->GetMaxHealth());

                player2->SaveHealthBeforeDuel();
                player2->SetHealth(player2->GetMaxHealth());

                // check if player1 class uses mana
                if (player1->getPowerType() == POWER_MANA)
                {
                    player1->SaveManaBeforeDuel();
                    player1->SetPower(POWER_MANA, player1->GetMaxPower(POWER_MANA));
                }

                // check if player2 class uses mana
                if (player2->getPowerType() == POWER_MANA)
                {
                    player2->SaveManaBeforeDuel();
                    player2->SetPower(POWER_MANA, player2->GetMaxPower(POWER_MANA));
                }
            }
        }

        // Called when a duel ends
        void OnDuelEnd(Player* winner, Player* loser, DuelCompleteType /*type*/) override
        {
            // Cooldown restore
            if (sWorld->getBoolConfig(CONFIG_RESET_DUEL_COOLDOWNS))
            {
                winner->RemoveArenaSpellCooldowns(true);
                loser->RemoveArenaSpellCooldowns(true);

                winner->GetSpellHistory()->RestoreCooldownStateAfterDuel();
                loser->GetSpellHistory()->RestoreCooldownStateAfterDuel();
            }

            // Health and mana restore
            if (sWorld->getBoolConfig(CONFIG_RESET_DUEL_HEALTH_MANA))
            {
                winner->RestoreHealthAfterDuel();
                loser->RestoreHealthAfterDuel();

                // check if player1 class uses mana
                if (winner->getPowerType() == POWER_MANA)
                    winner->RestoreManaAfterDuel(); 

                // check if player2 class uses mana
                if (loser->getPowerType() == POWER_MANA)
                    loser->RestoreManaAfterDuel(); 
            }
        }
};

void AddSC_duel_reset()
{
    new DuelResetScript();
}
