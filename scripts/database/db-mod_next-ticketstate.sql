USE otrs;

ALTER TABLE `standard_template`
	ADD COLUMN `fk_tickstateIDnextDefault` SMALLINT NOT NULL DEFAULT '4' AFTER `change_by`; ##Default 4=open
ALTER TABLE `standard_template`
	ADD CONSTRAINT `FK_ticket_state_id` FOREIGN KEY (`fk_tickstateIDnextDefault`) REFERENCES `ticket_state` (`id`);
