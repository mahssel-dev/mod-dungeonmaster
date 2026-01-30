DELETE FROM `creature_template` WHERE `entry` = 197762;

INSERT INTO `creature_template` (
    `entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,
    `KillCredit1`,`KillCredit2`,`name`,`subname`,`IconName`,`gossip_menu_id`,
    `minlevel`,`maxlevel`,`exp`,`faction`,`npcflag`,
    `speed_walk`,`speed_run`,`speed_swim`,`speed_flight`,`detection_range`,`scale`,
    `rank`,`dmgschool`,`DamageModifier`,
    `BaseAttackTime`,`RangeAttackTime`,`BaseVariance`,`RangeVariance`,
    `unit_class`,`unit_flags`,`unit_flags2`,`dynamicflags`,
    `family`,`type`,`type_flags`,
    `lootid`,`pickpocketloot`,`skinloot`,`PetSpellDataId`,`VehicleId`,
    `mingold`,`maxgold`,`AIName`,`MovementType`,`HoverHeight`,
    `HealthModifier`,`ManaModifier`,`ArmorModifier`,`ExperienceModifier`,
    `RacialLeader`,`movementId`,`RegenHealth`,
    `mechanic_immune_mask`,`spell_school_immune_mask`,`flags_extra`,
    `ScriptName`,`VerifiedBuild`
) VALUES (
             197762,0,0,0,
             0,0,'Dungeon Dan','Dungeonmaster','Trainer',0,
             80,80,0,35,1,
             1,1.14286,1,1,20,1,
             0,0,1,
             2000,0,1,1,
             1,0,0,0,
             0,7,138412032,
             0,0,0,0,0,
             0,0,'',0,1,
             1,1,1,1,
             0,0,1,
             0,0,2,
             'npc_dungeonmaster',0
         );

DELETE FROM `creature_template_model` WHERE `CreatureID` = 197762;
INSERT INTO `creature_template_model`
(`CreatureID`,`Idx`,`CreatureDisplayID`,`DisplayScale`,`Probability`,`VerifiedBuild`)
VALUES (197762,0,3437,1,1,0);

SET @TEXT_ID = 197760;
SET @TEXT = 'You want to go to a dungeon? I have explored all over the world and can get you where you need to go. I am not responsible for any death or dismemberment that may occure by going where you shouldn\'t';

DELETE FROM `npc_text` WHERE `ID` = @TEXT_ID;
INSERT INTO `npc_text` (`ID`,`text0_0`) VALUES (@TEXT_ID,@TEXT);
