--
-- Correction loot token sur quest journalière
--

-- Anub'Rekan must die
update quest_template set RewardItemId1 = 0, RewardItemId2 = 0, RewardItemCount1 = 0, RewardItemCount2 = 0, RewardCurrencyId1 = 395, RewardCurrencyCount1 = 138 where `id` = 24580;
-- Flame Leviathan Must Die!
update quest_template set RewardItemId1 = 0, RewardItemId2 = 0, RewardItemCount1 = 0, RewardItemCount2 = 0, RewardCurrencyId1 = 395, RewardCurrencyCount1 = 138 where `id` = 24585;
-- Ignis the Furnace Master Must Die!
update quest_template set RewardItemId1 = 0, RewardItemId2 = 0, RewardItemCount1 = 0, RewardItemCount2 = 0, RewardCurrencyId1 = 395, RewardCurrencyCount1 = 138 where `id` = 24587;
-- Instructor Razuvious Must Die!
update quest_template set RewardItemId1 = 0, RewardItemId2 = 0, RewardItemCount1 = 0, RewardItemCount2 = 0, RewardCurrencyId1 = 395, RewardCurrencyCount1 = 138 where `id` = 24582;
-- Lord Jaraxxus Must Die!
update quest_template set RewardItemId1 = 0, RewardItemId2 = 0, RewardItemCount1 = 0, RewardItemCount2 = 0, RewardCurrencyId1 = 395, RewardCurrencyCount1 = 138 where `id` = 24589;
-- Lord Marrowgar Must Die!
update quest_template set RewardItemId1 = 0, RewardItemId2 = 0, RewardItemCount1 = 0, RewardItemCount2 = 0, RewardCurrencyId1 = 395, RewardCurrencyCount1 = 138 where `id` = 24590;
-- Malygos Must Die!
update quest_template set RewardItemId1 = 0, RewardItemId2 = 0, RewardItemCount1 = 0, RewardItemCount2 = 0, RewardCurrencyId1 = 395, RewardCurrencyCount1 = 138 where `id` = 24584;
-- Noth the Plaguebringer Must Die!
update quest_template set RewardItemId1 = 0, RewardItemId2 = 0, RewardItemCount1 = 0, RewardItemCount2 = 0, RewardCurrencyId1 = 395, RewardCurrencyCount1 = 138 where `id` = 24581;
-- Patchwerk Must Die!
update quest_template set RewardItemId1 = 0, RewardItemId2 = 0, RewardItemCount1 = 0, RewardItemCount2 = 0, RewardCurrencyId1 = 395, RewardCurrencyCount1 = 138 where `id` = 24583;
-- Razorscale Must Die!
update quest_template set RewardItemId1 = 0, RewardItemId2 = 0, RewardItemCount1 = 0, RewardItemCount2 = 0, RewardCurrencyId1 = 395, RewardCurrencyCount1 = 138 where `id` = 24586;
-- Sartharion Must Die!
update quest_template set RewardItemId1 = 0, RewardItemId2 = 0, RewardItemCount1 = 0, RewardItemCount2 = 0, RewardCurrencyId1 = 395, RewardCurrencyCount1 = 138 where `id` = 24579;
-- XT-002 Deconstructor Must Die!
update quest_template set RewardItemId1 = 0, RewardItemId2 = 0, RewardItemCount1 = 0, RewardItemCount2 = 0, RewardCurrencyId1 = 395, RewardCurrencyCount1 = 138 where `id` = 24588;

UPDATE `quest_signal` SET `status` = '3', `name` = 'mikadmin' WHERE `id` IN (24580,24585,24587,24582,24589,24590,24584,24581,24583,24586,24579,24588);
 