--9_AddTriggersOnly

-- Trigger: didm_update on dn_item_data_map

-- DROP TRIGGER didm_update ON dn_item_data_map;

CREATE TRIGGER didm_update
  AFTER INSERT
  ON dn_item_data_map
  FOR EACH ROW
  EXECUTE PROCEDURE populate_ssid_in_didm_trigger();


-----------------------------------------------

-- Trigger: event_crf_update on event_crf

-- DROP TRIGGER event_crf_update ON event_crf;

CREATE TRIGGER event_crf_update
  AFTER UPDATE
  ON event_crf
  FOR EACH ROW
  EXECUTE PROCEDURE event_crf_trigger();

-----------------------------------------------------
-- Trigger: event_crf_update_1 on event_crf

-- DROP TRIGGER event_crf_update_1 ON event_crf;

CREATE TRIGGER event_crf_update_1
  AFTER UPDATE
  ON event_crf
  FOR EACH ROW
  EXECUTE PROCEDURE event_crf_version_change_trigger();

-------------------------------------------

-- Trigger: event_definition_crf_update on event_definition_crf

-- DROP TRIGGER event_definition_crf_update ON event_definition_crf;

CREATE TRIGGER event_definition_crf_update
  AFTER UPDATE
  ON event_definition_crf
  FOR EACH ROW
  EXECUTE PROCEDURE event_definition_crf_trigger();

-----------------------------------------------------

-- Trigger: global_subject_insert_update on subject

-- DROP TRIGGER global_subject_insert_update ON subject;

CREATE TRIGGER global_subject_insert_update
  AFTER INSERT OR UPDATE
  ON subject
  FOR EACH ROW
  EXECUTE PROCEDURE global_subject_trigger();

----------------------------------------------------

-- Trigger: item_data_initial on item_data

-- DROP TRIGGER item_data_initial ON item_data;

CREATE TRIGGER item_data_initial
  AFTER INSERT
  ON item_data
  FOR EACH ROW
  EXECUTE PROCEDURE item_data_initial_trigger();

-------------------------------------------------

-- Trigger: item_data_update on item_data

-- DROP TRIGGER item_data_update ON item_data;

CREATE TRIGGER item_data_update
  AFTER UPDATE OR DELETE
  ON item_data
  FOR EACH ROW
  EXECUTE PROCEDURE item_data_trigger();

----------------------------------------------

-- Trigger: repeating_data_insert on item_data

-- DROP TRIGGER repeating_data_insert ON item_data;

CREATE TRIGGER repeating_data_insert
  AFTER INSERT
  ON item_data
  FOR EACH ROW
  EXECUTE PROCEDURE repeating_item_data_trigger();

------------------------------------------------------

-- Trigger: study_event_insert_update on study_event

-- DROP TRIGGER study_event_insert_update ON study_event;

CREATE TRIGGER study_event_insert_update
  AFTER UPDATE
  ON study_event
  FOR EACH ROW
  EXECUTE PROCEDURE study_event_trigger_new();

-----------------------------------------------------
-- Trigger: study_subject_insert_updare on study_subject

-- DROP TRIGGER study_subject_insert_updare ON study_subject;

CREATE TRIGGER study_subject_insert_updare
  AFTER INSERT OR UPDATE
  ON study_subject
  FOR EACH ROW
  EXECUTE PROCEDURE study_subject_trigger();

----------------------------------------------------------
-- Trigger: subject_group_map_insert_update on subject_group_map

-- DROP TRIGGER subject_group_map_insert_update ON subject_group_map;

CREATE TRIGGER subject_group_map_insert_update
  AFTER INSERT OR UPDATE
  ON subject_group_map
  FOR EACH ROW
  EXECUTE PROCEDURE subject_group_assignment_trigger();

-------------------------------------------------------

















