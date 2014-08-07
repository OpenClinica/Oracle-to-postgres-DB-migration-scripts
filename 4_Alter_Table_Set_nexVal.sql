-- 4_Alter_Table_Set_nexVal



ALTER TABLE archived_dataset_file ALTER COLUMN archived_dataset_file_id SET DEFAULT nextval('archived_dataset_file_archived_dataset_file_id_seq');
ALTER TABLE audit_event ALTER COLUMN audit_id SET DEFAULT nextval('audit_event_audit_id_seq');


ALTER TABLE audit_log_event ALTER COLUMN audit_id SET DEFAULT nextval('audit_log_event_audit_id_seq');
ALTER TABLE audit_log_event_type ALTER COLUMN audit_log_event_type_id SET DEFAULT nextval('audit_log_event_type_audit_log_event_type_id_seq');
ALTER TABLE audit_user_login ALTER COLUMN id SET DEFAULT nextval('audit_user_login_id_seq');
ALTER TABLE authorities ALTER COLUMN id SET DEFAULT nextval('authorities_id_seq');
ALTER TABLE completion_status ALTER COLUMN completion_status_id SET DEFAULT nextval('completion_status_completion_status_id_seq');
ALTER TABLE configuration ALTER COLUMN id SET DEFAULT nextval('configuration_id_seq');
ALTER TABLE crf ALTER COLUMN crf_id SET DEFAULT nextval('crf_crf_id_seq');
ALTER TABLE crf_version ALTER COLUMN crf_version_id SET DEFAULT nextval('crf_version_crf_version_id_seq');


ALTER TABLE dataset ALTER COLUMN dataset_id SET DEFAULT nextval('dataset_dataset_id_seq');


ALTER TABLE dataset_item_status ALTER COLUMN dataset_item_status_id SET DEFAULT nextval('dataset_item_status_dataset_item_status_id_seq');

ALTER TABLE dc_computed_event ALTER COLUMN dc_summary_event_id SET DEFAULT nextval('dc_computed_event_dc_summary_event_id_seq');
ALTER TABLE dc_event ALTER COLUMN dc_event_id SET DEFAULT nextval('dc_event_dc_event_id_seq');
ALTER TABLE dc_primitive ALTER COLUMN dc_primitive_id SET DEFAULT nextval('dc_primitive_dc_primitive_id_seq');
ALTER TABLE dc_section_event ALTER COLUMN dc_event_id SET DEFAULT nextval('dc_section_event_dc_event_id_seq');
ALTER TABLE dc_send_email_event ALTER COLUMN dc_event_id SET DEFAULT nextval('dc_send_email_event_dc_event_id_seq');
ALTER TABLE dc_substitution_event ALTER COLUMN dc_event_id SET DEFAULT nextval('dc_substitution_event_dc_event_id_seq');

ALTER TABLE decision_condition ALTER COLUMN decision_condition_id SET DEFAULT nextval('decision_condition_decision_condition_id_seq');
ALTER TABLE discrepancy_note ALTER COLUMN discrepancy_note_id SET DEFAULT nextval('discrepancy_note_discrepancy_note_id_seq');
ALTER TABLE discrepancy_note_type ALTER COLUMN discrepancy_note_type_id SET DEFAULT nextval('discrepancy_note_type_discrepancy_note_type_id_seq');





ALTER TABLE dyn_item_form_metadata ALTER COLUMN id SET DEFAULT nextval('dyn_item_form_metadata_id_seq');
ALTER TABLE dyn_item_group_metadata ALTER COLUMN id SET DEFAULT nextval('dyn_item_group_metadata_id_seq');
ALTER TABLE event_crf ALTER COLUMN event_crf_id SET DEFAULT nextval('event_crf_event_crf_id_seq');
ALTER TABLE event_definition_crf ALTER COLUMN event_definition_crf_id SET DEFAULT nextval('event_definition_crf_event_definition_crf_id_seq');
ALTER TABLE export_format ALTER COLUMN export_format_id SET DEFAULT nextval('export_format_export_format_id_seq');
ALTER TABLE filter ALTER COLUMN filter_id SET DEFAULT nextval('filter_filter_id_seq');

ALTER TABLE group_class_types ALTER COLUMN group_class_type_id SET DEFAULT nextval('group_class_types_group_class_type_id_seq');
ALTER TABLE item ALTER COLUMN item_id SET DEFAULT nextval('item_item_id_seq');
ALTER TABLE item_data ALTER COLUMN item_data_id SET DEFAULT nextval('item_data_item_data_id_seq');
ALTER TABLE item_data_type ALTER COLUMN item_data_type_id SET DEFAULT nextval('item_data_type_item_data_type_id_seq');
ALTER TABLE item_form_metadata ALTER COLUMN item_form_metadata_id SET DEFAULT nextval('item_form_metadata_item_form_metadata_id_seq');
ALTER TABLE item_group ALTER COLUMN item_group_id SET DEFAULT nextval('item_group_item_group_id_seq');
ALTER TABLE item_group_metadata ALTER COLUMN item_group_metadata_id SET DEFAULT nextval('item_group_metadata_item_group_metadata_id_seq');
ALTER TABLE item_reference_type ALTER COLUMN item_reference_type_id SET DEFAULT nextval('item_reference_type_item_reference_type_id_seq');
ALTER TABLE measurement_unit ALTER COLUMN id SET DEFAULT nextval('measurement_unit_id_seq');
ALTER TABLE null_value_type ALTER COLUMN null_value_type_id SET DEFAULT nextval('null_value_type_null_value_type_id_seq');












ALTER TABLE openclinica_version ALTER COLUMN id SET DEFAULT nextval('openclinica_version_id_seq');
ALTER TABLE privilege ALTER COLUMN priv_id SET DEFAULT nextval('privilege_priv_id_seq');
ALTER TABLE resolution_status ALTER COLUMN resolution_status_id SET DEFAULT nextval('resolution_status_resolution_status_id_seq');
ALTER TABLE response_set ALTER COLUMN response_set_id SET DEFAULT nextval('response_set_response_set_id_seq');
ALTER TABLE response_type ALTER COLUMN response_type_id SET DEFAULT nextval('response_type_response_type_id_seq');

ALTER TABLE rule ALTER COLUMN id SET DEFAULT nextval('rule_id_seq');
ALTER TABLE rule_action ALTER COLUMN id SET DEFAULT nextval('rule_action_id_seq');
ALTER TABLE rule_action_property ALTER COLUMN id SET DEFAULT nextval('rule_action_property_id_seq');
ALTER TABLE rule_action_run ALTER COLUMN id SET DEFAULT nextval('rule_action_run_id_seq');
ALTER TABLE rule_action_run_log ALTER COLUMN id SET DEFAULT nextval('rule_action_run_log_id_seq');
ALTER TABLE rule_expression ALTER COLUMN id SET DEFAULT nextval('rule_expression_id_seq');
ALTER TABLE rule_set ALTER COLUMN id SET DEFAULT nextval('rule_set_id_seq');
ALTER TABLE rule_set_audit ALTER COLUMN id SET DEFAULT nextval('rule_set_audit_id_seq');
ALTER TABLE rule_set_rule ALTER COLUMN id SET DEFAULT nextval('rule_set_rule_id_seq');
ALTER TABLE rule_set_rule_audit ALTER COLUMN id SET DEFAULT nextval('rule_set_rule_audit_id_seq');
ALTER TABLE scd_item_metadata ALTER COLUMN id SET DEFAULT nextval('scd_item_metadata_id_seq');
ALTER TABLE section ALTER COLUMN section_id SET DEFAULT nextval('section_section_id_seq');
ALTER TABLE status ALTER COLUMN status_id SET DEFAULT nextval('status_status_id_seq');
ALTER TABLE study ALTER COLUMN study_id SET DEFAULT nextval('study_study_id_seq');
ALTER TABLE study_event ALTER COLUMN study_event_id SET DEFAULT nextval('study_event_study_event_id_seq');
ALTER TABLE study_event_definition ALTER COLUMN study_event_definition_id SET DEFAULT nextval('study_event_definition_study_event_definition_id_seq');
ALTER TABLE study_group ALTER COLUMN study_group_id SET DEFAULT nextval('study_group_study_group_id_seq');
ALTER TABLE study_group_class ALTER COLUMN study_group_class_id SET DEFAULT nextval('study_group_class_study_group_class_id_seq');
ALTER TABLE study_module_status ALTER COLUMN id SET DEFAULT nextval('study_module_status_id_seq');
ALTER TABLE study_parameter ALTER COLUMN study_parameter_id SET DEFAULT nextval('study_parameter_study_parameter_id_seq');
ALTER TABLE study_parameter_value ALTER COLUMN study_parameter_value_id SET DEFAULT nextval('study_parameter_value_study_parameter_value_id_seq');
ALTER TABLE study_subject ALTER COLUMN study_subject_id SET DEFAULT nextval('study_subject_study_subject_id_seq');
ALTER TABLE study_type ALTER COLUMN study_type_id SET DEFAULT nextval('study_type_study_type_id_seq');

ALTER TABLE subject ALTER COLUMN subject_id SET DEFAULT nextval('subject_subject_id_seq');
ALTER TABLE subject_event_status ALTER COLUMN subject_event_status_id SET DEFAULT nextval('subject_event_status_subject_event_status_id_seq');
ALTER TABLE subject_group_map ALTER COLUMN subject_group_map_id SET DEFAULT nextval('subject_group_map_subject_group_map_id_seq');
ALTER TABLE usage_statistics_data ALTER COLUMN id SET DEFAULT nextval('usage_statistics_data_id_seq');
ALTER TABLE user_account ALTER COLUMN user_id SET DEFAULT nextval('user_account_user_id_seq');
ALTER TABLE user_role ALTER COLUMN role_id SET DEFAULT nextval('user_role_role_id_seq');
ALTER TABLE user_type ALTER COLUMN user_type_id SET DEFAULT nextval('user_type_user_type_id_seq');

