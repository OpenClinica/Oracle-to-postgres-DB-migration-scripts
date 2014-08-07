-- 3_Create_Sequences



-- Sequence: archived_dataset_file_archived_dataset_file_id_seq

-- DROP SEQUENCE archived_dataset_file_archived_dataset_file_id_seq;

CREATE SEQUENCE archived_dataset_file_archived_dataset_file_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE archived_dataset_file_archived_dataset_file_id_seq OWNER TO clinica;
------------------------------------------------------------------------------------
-- Sequence: audit_event_audit_id_seq

-- DROP SEQUENCE audit_event_audit_id_seq;

CREATE SEQUENCE audit_event_audit_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE audit_event_audit_id_seq OWNER TO clinica;
-------------------------------------------------------------
-- Sequence: audit_log_event_audit_id_seq

-- DROP SEQUENCE audit_log_event_audit_id_seq;

CREATE SEQUENCE audit_log_event_audit_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE audit_log_event_audit_id_seq OWNER TO clinica;
-------------------------------------------------------------------
-- Sequence: audit_log_event_type_audit_log_event_type_id_seq

-- DROP SEQUENCE audit_log_event_type_audit_log_event_type_id_seq;

CREATE SEQUENCE audit_log_event_type_audit_log_event_type_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE audit_log_event_type_audit_log_event_type_id_seq OWNER TO clinica;
-------------------------------------------------------------------------------
-- Sequence: audit_user_login_id_seq

-- DROP SEQUENCE audit_user_login_id_seq;

CREATE SEQUENCE audit_user_login_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE audit_user_login_id_seq OWNER TO clinica;
----------------------------------------------------------------
-- Sequence: authorities_id_seq

-- DROP SEQUENCE authorities_id_seq;

CREATE SEQUENCE authorities_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE authorities_id_seq OWNER TO clinica;
---------------------------------------------------------------
-- Sequence: completion_status_completion_status_id_seq

-- DROP SEQUENCE completion_status_completion_status_id_seq;

CREATE SEQUENCE completion_status_completion_status_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE completion_status_completion_status_id_seq OWNER TO clinica;
----------------------------------------------------------------------------
-- Sequence: configuration_id_seq

-- DROP SEQUENCE configuration_id_seq;

CREATE SEQUENCE configuration_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE configuration_id_seq OWNER TO clinica;
-------------------------------------------------------------
-- Sequence: crf_crf_id_seq

-- DROP SEQUENCE crf_crf_id_seq;

CREATE SEQUENCE crf_crf_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE crf_crf_id_seq OWNER TO clinica;
------------------------------------------------------------
-- Sequence: crf_version_crf_version_id_seq

-- DROP SEQUENCE crf_version_crf_version_id_seq;

CREATE SEQUENCE crf_version_crf_version_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE crf_version_crf_version_id_seq OWNER TO clinica;
-------------------------------------------------------------------
-- Sequence: dataset_dataset_id_seq

-- DROP SEQUENCE dataset_dataset_id_seq;

CREATE SEQUENCE dataset_dataset_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE dataset_dataset_id_seq OWNER TO clinica;
--------------------------------------------------------------------
-- Sequence: dataset_item_status_dataset_item_status_id_seq

-- DROP SEQUENCE dataset_item_status_dataset_item_status_id_seq;

CREATE SEQUENCE dataset_item_status_dataset_item_status_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE dataset_item_status_dataset_item_status_id_seq OWNER TO clinica;
---------------------------------------------------------------------------
-- Sequence: dc_computed_event_dc_summary_event_id_seq

-- DROP SEQUENCE dc_computed_event_dc_summary_event_id_seq;

CREATE SEQUENCE dc_computed_event_dc_summary_event_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE dc_computed_event_dc_summary_event_id_seq OWNER TO clinica;
------------------------------------------------------------------------
-- Sequence: dc_event_dc_event_id_seq

-- DROP SEQUENCE dc_event_dc_event_id_seq;

CREATE SEQUENCE dc_event_dc_event_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE dc_event_dc_event_id_seq OWNER TO clinica;
--------------------------------------------------------------
-- Sequence: dc_primitive_dc_primitive_id_seq

-- DROP SEQUENCE dc_primitive_dc_primitive_id_seq;

CREATE SEQUENCE dc_primitive_dc_primitive_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE dc_primitive_dc_primitive_id_seq OWNER TO clinica;
-------------------------------------------------------------------
-- Sequence: dc_section_event_dc_event_id_seq

-- DROP SEQUENCE dc_section_event_dc_event_id_seq;

CREATE SEQUENCE dc_section_event_dc_event_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE dc_section_event_dc_event_id_seq OWNER TO clinica;
-----------------------------------------------------------------
-- Sequence: dc_send_email_event_dc_event_id_seq

-- DROP SEQUENCE dc_send_email_event_dc_event_id_seq;

CREATE SEQUENCE dc_send_email_event_dc_event_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE dc_send_email_event_dc_event_id_seq OWNER TO clinica;
--------------------------------------------------------------------
-- Sequence: dc_substitution_event_dc_event_id_seq

-- DROP SEQUENCE dc_substitution_event_dc_event_id_seq;

CREATE SEQUENCE dc_substitution_event_dc_event_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE dc_substitution_event_dc_event_id_seq OWNER TO clinica;
------------------------------------------------------------------------
-- Sequence: decision_condition_decision_condition_id_seq

-- DROP SEQUENCE decision_condition_decision_condition_id_seq;

CREATE SEQUENCE decision_condition_decision_condition_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE decision_condition_decision_condition_id_seq OWNER TO clinica;
-----------------------------------------------------------------------
-- Sequence: discrepancy_note_discrepancy_note_id_seq

-- DROP SEQUENCE discrepancy_note_discrepancy_note_id_seq;

CREATE SEQUENCE discrepancy_note_discrepancy_note_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE discrepancy_note_discrepancy_note_id_seq OWNER TO clinica;
--------------------------------------------------------------------
-- Sequence: discrepancy_note_type_discrepancy_note_type_id_seq

-- DROP SEQUENCE discrepancy_note_type_discrepancy_note_type_id_seq;

CREATE SEQUENCE discrepancy_note_type_discrepancy_note_type_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE discrepancy_note_type_discrepancy_note_type_id_seq OWNER TO clinica;
------------------------------------------------------------------------
-- Sequence: dyn_item_form_metadata_id_seq

-- DROP SEQUENCE dyn_item_form_metadata_id_seq;

CREATE SEQUENCE dyn_item_form_metadata_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE dyn_item_form_metadata_id_seq OWNER TO clinica;
-----------------------------------------------------------------
-- Sequence: dyn_item_group_metadata_id_seq

-- DROP SEQUENCE dyn_item_group_metadata_id_seq;

CREATE SEQUENCE dyn_item_group_metadata_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE dyn_item_group_metadata_id_seq OWNER TO clinica;
----------------------------------------------------------------
-- Sequence: event_crf_event_crf_id_seq

-- DROP SEQUENCE event_crf_event_crf_id_seq;

CREATE SEQUENCE event_crf_event_crf_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE event_crf_event_crf_id_seq OWNER TO clinica;
----------------------------------------------------------------
-- Sequence: event_definition_crf_event_definition_crf_id_seq

-- DROP SEQUENCE event_definition_crf_event_definition_crf_id_seq;

CREATE SEQUENCE event_definition_crf_event_definition_crf_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE event_definition_crf_event_definition_crf_id_seq OWNER TO clinica;
----------------------------------------------------------------------
-- Sequence: export_format_export_format_id_seq

-- DROP SEQUENCE export_format_export_format_id_seq;

CREATE SEQUENCE export_format_export_format_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE export_format_export_format_id_seq OWNER TO clinica;
-----------------------------------------------------------------------
-- Sequence: filter_filter_id_seq

-- DROP SEQUENCE filter_filter_id_seq;

CREATE SEQUENCE filter_filter_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE filter_filter_id_seq OWNER TO clinica;
-------------------------------------------------------------------
-- Sequence: group_class_types_group_class_type_id_seq

-- DROP SEQUENCE group_class_types_group_class_type_id_seq;

CREATE SEQUENCE group_class_types_group_class_type_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE group_class_types_group_class_type_id_seq OWNER TO clinica;
----------------------------------------------------------------
-- Sequence: item_data_item_data_id_seq

-- DROP SEQUENCE item_data_item_data_id_seq;

CREATE SEQUENCE item_data_item_data_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE item_data_item_data_id_seq OWNER TO clinica;
-----------------------------------------------------------------
-- Sequence: item_data_type_item_data_type_id_seq

-- DROP SEQUENCE item_data_type_item_data_type_id_seq;

CREATE SEQUENCE item_data_type_item_data_type_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE item_data_type_item_data_type_id_seq OWNER TO clinica;
---------------------------------------------------------------------
-- Sequence: item_form_metadata_item_form_metadata_id_seq

-- DROP SEQUENCE item_form_metadata_item_form_metadata_id_seq;

CREATE SEQUENCE item_form_metadata_item_form_metadata_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE item_form_metadata_item_form_metadata_id_seq OWNER TO clinica;
---------------------------------------------------------------
-- Sequence: item_group_item_group_id_seq

-- DROP SEQUENCE item_group_item_group_id_seq;

CREATE SEQUENCE item_group_item_group_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE item_group_item_group_id_seq OWNER TO clinica;
-------------------------------------------------------------------
-- Sequence: item_group_metadata_item_group_metadata_id_seq

-- DROP SEQUENCE item_group_metadata_item_group_metadata_id_seq;

CREATE SEQUENCE item_group_metadata_item_group_metadata_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE item_group_metadata_item_group_metadata_id_seq OWNER TO clinica;
-------------------------------------------------------------------
-- Sequence: item_item_id_seq

-- DROP SEQUENCE item_item_id_seq;

CREATE SEQUENCE item_item_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE item_item_id_seq OWNER TO clinica;
--------------------------------------------------------------
-- Sequence: item_reference_type_item_reference_type_id_seq

-- DROP SEQUENCE item_reference_type_item_reference_type_id_seq;

CREATE SEQUENCE item_reference_type_item_reference_type_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE item_reference_type_item_reference_type_id_seq OWNER TO clinica;
----------------------------------------------------------------
-- Sequence: measurement_unit_id_seq

-- DROP SEQUENCE measurement_unit_id_seq;

CREATE SEQUENCE measurement_unit_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE measurement_unit_id_seq OWNER TO clinica;
-----------------------------------------------------------------
-- Sequence: null_value_type_null_value_type_id_seq

-- DROP SEQUENCE null_value_type_null_value_type_id_seq;

CREATE SEQUENCE null_value_type_null_value_type_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE null_value_type_null_value_type_id_seq OWNER TO clinica;
------------------------------------------------------------------------
-- Sequence: openclinica_version_id_seq

-- DROP SEQUENCE openclinica_version_id_seq;

CREATE SEQUENCE openclinica_version_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE openclinica_version_id_seq OWNER TO clinica;
---------------------------------------------------------------------
-- Sequence: privilege_priv_id_seq

-- DROP SEQUENCE privilege_priv_id_seq;

CREATE SEQUENCE privilege_priv_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE privilege_priv_id_seq OWNER TO clinica;
------------------------------------------------------------
-- Sequence: resolution_status_resolution_status_id_seq

-- DROP SEQUENCE resolution_status_resolution_status_id_seq;

CREATE SEQUENCE resolution_status_resolution_status_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE resolution_status_resolution_status_id_seq OWNER TO clinica;
--------------------------------------------------------------
-- Sequence: response_set_response_set_id_seq

-- DROP SEQUENCE response_set_response_set_id_seq;

CREATE SEQUENCE response_set_response_set_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE response_set_response_set_id_seq OWNER TO clinica;
------------------------------------------------------------------
-- Sequence: response_type_response_type_id_seq

-- DROP SEQUENCE response_type_response_type_id_seq;

CREATE SEQUENCE response_type_response_type_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE response_type_response_type_id_seq OWNER TO clinica;
--------------------------------------------------------------------
-- Sequence: rule_action_id_seq

-- DROP SEQUENCE rule_action_id_seq;

CREATE SEQUENCE rule_action_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE rule_action_id_seq OWNER TO clinica;
----------------------------------------------------------
-- Sequence: rule_action_property_id_seq

-- DROP SEQUENCE rule_action_property_id_seq;

CREATE SEQUENCE rule_action_property_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE rule_action_property_id_seq OWNER TO clinica;
------------------------------------------------------------
-- Sequence: rule_action_run_id_seq

-- DROP SEQUENCE rule_action_run_id_seq;

CREATE SEQUENCE rule_action_run_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE rule_action_run_id_seq OWNER TO clinica;
----------------------------------------------------------
-- Sequence: rule_action_run_log_id_seq

-- DROP SEQUENCE rule_action_run_log_id_seq;

CREATE SEQUENCE rule_action_run_log_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE rule_action_run_log_id_seq OWNER TO clinica;
--------------------------------------------------------
-- Sequence: rule_expression_id_seq

-- DROP SEQUENCE rule_expression_id_seq;

CREATE SEQUENCE rule_expression_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE rule_expression_id_seq OWNER TO clinica;
-------------------------------------------------------------
-- Sequence: rule_id_seq

-- DROP SEQUENCE rule_id_seq;

CREATE SEQUENCE rule_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE rule_id_seq OWNER TO clinica;
----------------------------------------------------
-- Sequence: rule_set_audit_id_seq

-- DROP SEQUENCE rule_set_audit_id_seq;

CREATE SEQUENCE rule_set_audit_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE rule_set_audit_id_seq OWNER TO clinica;
----------------------------------------------------
-- Sequence: rule_set_id_seq

-- DROP SEQUENCE rule_set_id_seq;

CREATE SEQUENCE rule_set_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE rule_set_id_seq OWNER TO clinica;
-----------------------------------------------------
-- Sequence: rule_set_rule_audit_id_seq

-- DROP SEQUENCE rule_set_rule_audit_id_seq;

CREATE SEQUENCE rule_set_rule_audit_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE rule_set_rule_audit_id_seq OWNER TO clinica;
--------------------------------------------------------
-- Sequence: rule_set_rule_id_seq

-- DROP SEQUENCE rule_set_rule_id_seq;

CREATE SEQUENCE rule_set_rule_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE rule_set_rule_id_seq OWNER TO clinica;
---------------------------------------------------------
-- Sequence: scd_item_metadata_id_seq

-- DROP SEQUENCE scd_item_metadata_id_seq;

CREATE SEQUENCE scd_item_metadata_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE scd_item_metadata_id_seq OWNER TO clinica;
-------------------------------------------------------
-- Sequence: section_section_id_seq

-- DROP SEQUENCE section_section_id_seq;

CREATE SEQUENCE section_section_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE section_section_id_seq OWNER TO clinica;
--------------------------------------------------------
-- Sequence: status_status_id_seq

-- DROP SEQUENCE status_status_id_seq;

CREATE SEQUENCE status_status_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE status_status_id_seq OWNER TO clinica;
---------------------------------------------------------
-- Sequence: study_event_definition_study_event_definition_id_seq

-- DROP SEQUENCE study_event_definition_study_event_definition_id_seq;

CREATE SEQUENCE study_event_definition_study_event_definition_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE study_event_definition_study_event_definition_id_seq OWNER TO clinica;
---------------------------------------------------------------
-- Sequence: study_event_study_event_id_seq

-- DROP SEQUENCE study_event_study_event_id_seq;

CREATE SEQUENCE study_event_study_event_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE study_event_study_event_id_seq OWNER TO clinica;
-----------------------------------------------------------------
-- Sequence: study_group_class_study_group_class_id_seq

-- DROP SEQUENCE study_group_class_study_group_class_id_seq;

CREATE SEQUENCE study_group_class_study_group_class_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE study_group_class_study_group_class_id_seq OWNER TO clinica;
------------------------------------------------------------------
-- Sequence: study_group_study_group_id_seq

-- DROP SEQUENCE study_group_study_group_id_seq;

CREATE SEQUENCE study_group_study_group_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE study_group_study_group_id_seq OWNER TO clinica;
-----------------------------------------------------------------
-- Sequence: study_module_status_id_seq

-- DROP SEQUENCE study_module_status_id_seq;

CREATE SEQUENCE study_module_status_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE study_module_status_id_seq OWNER TO clinica;
-----------------------------------------------------------------
-- Sequence: study_parameter_study_parameter_id_seq

-- DROP SEQUENCE study_parameter_study_parameter_id_seq;

CREATE SEQUENCE study_parameter_study_parameter_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE study_parameter_study_parameter_id_seq OWNER TO clinica;
------------------------------------------------------------------------
-- Sequence: study_parameter_value_study_parameter_value_id_seq

-- DROP SEQUENCE study_parameter_value_study_parameter_value_id_seq;

CREATE SEQUENCE study_parameter_value_study_parameter_value_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE study_parameter_value_study_parameter_value_id_seq OWNER TO clinica;
---------------------------------------------------------------------------
-- Sequence: study_study_id_seq

-- DROP SEQUENCE study_study_id_seq;

CREATE SEQUENCE study_study_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE study_study_id_seq OWNER TO clinica;
----------------------------------------------------------------
-- Sequence: study_subject_study_subject_id_seq

-- DROP SEQUENCE study_subject_study_subject_id_seq;

CREATE SEQUENCE study_subject_study_subject_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE study_subject_study_subject_id_seq OWNER TO clinica;
-------------------------------------------------------------------
-- Sequence: study_type_study_type_id_seq

-- DROP SEQUENCE study_type_study_type_id_seq;

CREATE SEQUENCE study_type_study_type_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE study_type_study_type_id_seq OWNER TO clinica;
---------------------------------------------------------------
-- Sequence: subject_event_status_subject_event_status_id_seq

-- DROP SEQUENCE subject_event_status_subject_event_status_id_seq;

CREATE SEQUENCE subject_event_status_subject_event_status_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE subject_event_status_subject_event_status_id_seq OWNER TO clinica;
------------------------------------------------------------------
-- Sequence: subject_group_map_subject_group_map_id_seq

-- DROP SEQUENCE subject_group_map_subject_group_map_id_seq;

CREATE SEQUENCE subject_group_map_subject_group_map_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE subject_group_map_subject_group_map_id_seq OWNER TO clinica;
--------------------------------------------------------------------------
-- Sequence: subject_subject_id_seq

-- DROP SEQUENCE subject_subject_id_seq;

CREATE SEQUENCE subject_subject_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE subject_subject_id_seq OWNER TO clinica;
------------------------------------------------------------
-- Sequence: usage_statistics_data_id_seq

-- DROP SEQUENCE usage_statistics_data_id_seq;

CREATE SEQUENCE usage_statistics_data_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE usage_statistics_data_id_seq OWNER TO clinica;
--------------------------------------------------------------
-- Sequence: user_account_user_id_seq

-- DROP SEQUENCE user_account_user_id_seq;

CREATE SEQUENCE user_account_user_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE user_account_user_id_seq OWNER TO clinica;
---------------------------------------------------------------
-- Sequence: user_role_role_id_seq

-- DROP SEQUENCE user_role_role_id_seq;

CREATE SEQUENCE user_role_role_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE user_role_role_id_seq OWNER TO clinica;
-----------------------------------------------------------
-- Sequence: user_type_user_type_id_seq

-- DROP SEQUENCE user_type_user_type_id_seq;

CREATE SEQUENCE user_type_user_type_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE user_type_user_type_id_seq OWNER TO clinica;
--------------------------------------------------------
