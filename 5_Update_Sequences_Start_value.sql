-- 5_Update_Sequences_Start_value


Select 'archived_dataset_file' table_name ,'archived_dataset_file_id' Column_name ,setval('archived_dataset_file_archived_dataset_file_id_seq',(select max(archived_dataset_file_id)+1 from archived_dataset_file), false) UNION 
Select 'audit_event' table_name ,'audit_id' Column_name ,setval('audit_event_audit_id_seq',(select max(audit_id)+1 from audit_event), false) UNION 


Select 'audit_log_event' table_name ,'audit_id' Column_name ,setval('audit_log_event_audit_id_seq',(select max(audit_id)+1 from audit_log_event), false) UNION 
Select 'audit_log_event_type' table_name ,'audit_log_event_type_id' Column_name ,setval('audit_log_event_type_audit_log_event_type_id_seq',(select max(audit_log_event_type_id)+1 from audit_log_event_type), false) UNION 
Select 'audit_user_login' table_name ,'id' Column_name ,setval('audit_user_login_id_seq',(select max(id)+1 from audit_user_login), false) UNION 
Select 'authorities' table_name ,'id' Column_name ,setval('authorities_id_seq',(select max(id)+1 from authorities), false) UNION 
Select 'completion_status' table_name ,'completion_status_id' Column_name ,setval('completion_status_completion_status_id_seq',(select max(completion_status_id)+1 from completion_status), false) UNION 
Select 'configuration' table_name ,'id' Column_name ,setval('configuration_id_seq',(select max(id)+1 from configuration), false) UNION 
Select 'crf' table_name ,'crf_id' Column_name ,setval('crf_crf_id_seq',(select max(crf_id)+1 from crf), false) UNION 
Select 'crf_version' table_name ,'crf_version_id' Column_name ,setval('crf_version_crf_version_id_seq',(select max(crf_version_id)+1 from crf_version), false) UNION 


Select 'dataset' table_name ,'dataset_id' Column_name ,setval('dataset_dataset_id_seq',(select max(dataset_id)+1 from dataset), false) UNION 


Select 'dataset_item_status' table_name ,'dataset_item_status_id' Column_name ,setval('dataset_item_status_dataset_item_status_id_seq',(select max(dataset_item_status_id)+1 from dataset_item_status), false) UNION 

Select 'dc_computed_event' table_name ,'dc_summary_event_id' Column_name ,setval('dc_computed_event_dc_summary_event_id_seq',(select max(dc_summary_event_id)+1 from dc_computed_event), false) UNION 
Select 'dc_event' table_name ,'dc_event_id' Column_name ,setval('dc_event_dc_event_id_seq',(select max(dc_event_id)+1 from dc_event), false) UNION 
Select 'dc_primitive' table_name ,'dc_primitive_id' Column_name ,setval('dc_primitive_dc_primitive_id_seq',(select max(dc_primitive_id)+1 from dc_primitive), false) UNION 
Select 'dc_section_event' table_name ,'dc_event_id' Column_name ,setval('dc_section_event_dc_event_id_seq',(select max(dc_event_id)+1 from dc_section_event), false) UNION 
Select 'dc_send_email_event' table_name ,'dc_event_id' Column_name ,setval('dc_send_email_event_dc_event_id_seq',(select max(dc_event_id)+1 from dc_send_email_event), false) UNION 
Select 'dc_substitution_event' table_name ,'dc_event_id' Column_name ,setval('dc_substitution_event_dc_event_id_seq',(select max(dc_event_id)+1 from dc_substitution_event), false) UNION 

Select 'decision_condition' table_name ,'decision_condition_id' Column_name ,setval('decision_condition_decision_condition_id_seq',(select max(decision_condition_id)+1 from decision_condition), false) UNION 
Select 'discrepancy_note' table_name ,'discrepancy_note_id' Column_name ,setval('discrepancy_note_discrepancy_note_id_seq',(select max(discrepancy_note_id)+1 from discrepancy_note), false) UNION 
Select 'discrepancy_note_type' table_name ,'discrepancy_note_type_id' Column_name ,setval('discrepancy_note_type_discrepancy_note_type_id_seq',(select max(discrepancy_note_type_id)+1 from discrepancy_note_type), false) UNION 





Select 'dyn_item_form_metadata' table_name ,'id' Column_name ,setval('dyn_item_form_metadata_id_seq',(select max(id)+1 from dyn_item_form_metadata), false) UNION 
Select 'dyn_item_group_metadata' table_name ,'id' Column_name ,setval('dyn_item_group_metadata_id_seq',(select max(id)+1 from dyn_item_group_metadata), false) UNION 
Select 'event_crf' table_name ,'event_crf_id' Column_name ,setval('event_crf_event_crf_id_seq',(select max(event_crf_id)+1 from event_crf), false) UNION 
Select 'event_definition_crf' table_name ,'event_definition_crf_id' Column_name ,setval('event_definition_crf_event_definition_crf_id_seq',(select max(event_definition_crf_id)+1 from event_definition_crf), false) UNION 
Select 'export_format' table_name ,'export_format_id' Column_name ,setval('export_format_export_format_id_seq',(select max(export_format_id)+1 from export_format), false) UNION 
Select 'filter' table_name ,'filter_id' Column_name ,setval('filter_filter_id_seq',(select max(filter_id)+1 from filter), false) UNION 

Select 'group_class_types' table_name ,'group_class_type_id' Column_name ,setval('group_class_types_group_class_type_id_seq',(select max(group_class_type_id)+1 from group_class_types), false) UNION 
Select 'item' table_name ,'item_id' Column_name ,setval('item_item_id_seq',(select max(item_id)+1 from item), false) UNION 
Select 'item_data' table_name ,'item_data_id' Column_name ,setval('item_data_item_data_id_seq',(select max(item_data_id)+1 from item_data), false) UNION 
Select 'item_data_type' table_name ,'item_data_type_id' Column_name ,setval('item_data_type_item_data_type_id_seq',(select max(item_data_type_id)+1 from item_data_type), false) UNION 
Select 'item_form_metadata' table_name ,'item_form_metadata_id' Column_name ,setval('item_form_metadata_item_form_metadata_id_seq',(select max(item_form_metadata_id)+1 from item_form_metadata), false) UNION 
Select 'item_group' table_name ,'item_group_id' Column_name ,setval('item_group_item_group_id_seq',(select max(item_group_id)+1 from item_group), false) UNION 
Select 'item_group_metadata' table_name ,'item_group_metadata_id' Column_name ,setval('item_group_metadata_item_group_metadata_id_seq',(select max(item_group_metadata_id)+1 from item_group_metadata), false) UNION 
Select 'item_reference_type' table_name ,'item_reference_type_id' Column_name ,setval('item_reference_type_item_reference_type_id_seq',(select max(item_reference_type_id)+1 from item_reference_type), false) UNION 
Select 'measurement_unit' table_name ,'id' Column_name ,setval('measurement_unit_id_seq',(select max(id)+1 from measurement_unit), false) UNION 
Select 'null_value_type' table_name ,'null_value_type_id' Column_name ,setval('null_value_type_null_value_type_id_seq',(select max(null_value_type_id)+1 from null_value_type), false) UNION 












Select 'openclinica_version' table_name ,'id' Column_name ,setval('openclinica_version_id_seq',(select max(id)+1 from openclinica_version), false) UNION 
Select 'privilege' table_name ,'priv_id' Column_name ,setval('privilege_priv_id_seq',(select max(priv_id)+1 from privilege), false) UNION 
Select 'resolution_status' table_name ,'resolution_status_id' Column_name ,setval('resolution_status_resolution_status_id_seq',(select max(resolution_status_id)+1 from resolution_status), false) UNION 
Select 'response_set' table_name ,'response_set_id' Column_name ,setval('response_set_response_set_id_seq',(select max(response_set_id)+1 from response_set), false) UNION 
Select 'response_type' table_name ,'response_type_id' Column_name ,setval('response_type_response_type_id_seq',(select max(response_type_id)+1 from response_type), false) UNION 

Select 'rule' table_name ,'id' Column_name ,setval('rule_id_seq',(select max(id)+1 from rule), false) UNION 
Select 'rule_action' table_name ,'id' Column_name ,setval('rule_action_id_seq',(select max(id)+1 from rule_action), false) UNION 
Select 'rule_action_property' table_name ,'id' Column_name ,setval('rule_action_property_id_seq',(select max(id)+1 from rule_action_property), false) UNION 
Select 'rule_action_run' table_name ,'id' Column_name ,setval('rule_action_run_id_seq',(select max(id)+1 from rule_action_run), false) UNION 
Select 'rule_action_run_log' table_name ,'id' Column_name ,setval('rule_action_run_log_id_seq',(select max(id)+1 from rule_action_run_log), false) UNION 
Select 'rule_expression' table_name ,'id' Column_name ,setval('rule_expression_id_seq',(select max(id)+1 from rule_expression), false) UNION 
Select 'rule_set' table_name ,'id' Column_name ,setval('rule_set_id_seq',(select max(id)+1 from rule_set), false) UNION 
Select 'rule_set_audit' table_name ,'id' Column_name ,setval('rule_set_audit_id_seq',(select max(id)+1 from rule_set_audit), false) UNION 
Select 'rule_set_rule' table_name ,'id' Column_name ,setval('rule_set_rule_id_seq',(select max(id)+1 from rule_set_rule), false) UNION 
Select 'rule_set_rule_audit' table_name ,'id' Column_name ,setval('rule_set_rule_audit_id_seq',(select max(id)+1 from rule_set_rule_audit), false) UNION 
Select 'scd_item_metadata' table_name ,'id' Column_name ,setval('scd_item_metadata_id_seq',(select max(id)+1 from scd_item_metadata), false) UNION 
Select 'section' table_name ,'section_id' Column_name ,setval('section_section_id_seq',(select max(section_id)+1 from section), false) UNION 
Select 'status' table_name ,'status_id' Column_name ,setval('status_status_id_seq',(select max(status_id)+1 from status), false) UNION 
Select 'study' table_name ,'study_id' Column_name ,setval('study_study_id_seq',(select max(study_id)+1 from study), false) UNION 
Select 'study_event' table_name ,'study_event_id' Column_name ,setval('study_event_study_event_id_seq',(select max(study_event_id)+1 from study_event), false) UNION 
Select 'study_event_definition' table_name ,'study_event_definition_id' Column_name ,setval('study_event_definition_study_event_definition_id_seq',(select max(study_event_definition_id)+1 from study_event_definition), false) UNION 
Select 'study_group' table_name ,'study_group_id' Column_name ,setval('study_group_study_group_id_seq',(select max(study_group_id)+1 from study_group), false) UNION 
Select 'study_group_class' table_name ,'study_group_class_id' Column_name ,setval('study_group_class_study_group_class_id_seq',(select max(study_group_class_id)+1 from study_group_class), false) UNION 
Select 'study_module_status' table_name ,'id' Column_name ,setval('study_module_status_id_seq',(select max(id)+1 from study_module_status), false) UNION 
Select 'study_parameter' table_name ,'study_parameter_id' Column_name ,setval('study_parameter_study_parameter_id_seq',(select max(study_parameter_id)+1 from study_parameter), false) UNION 
Select 'study_parameter_value' table_name ,'study_parameter_value_id' Column_name ,setval('study_parameter_value_study_parameter_value_id_seq',(select max(study_parameter_value_id)+1 from study_parameter_value), false) UNION 
Select 'study_subject' table_name ,'study_subject_id' Column_name ,setval('study_subject_study_subject_id_seq',(select max(study_subject_id)+1 from study_subject), false) UNION 
Select 'study_type' table_name ,'study_type_id' Column_name ,setval('study_type_study_type_id_seq',(select max(study_type_id)+1 from study_type), false) UNION 

Select 'subject' table_name ,'subject_id' Column_name ,setval('subject_subject_id_seq',(select max(subject_id)+1 from subject), false) UNION 
Select 'subject_event_status' table_name ,'subject_event_status_id' Column_name ,setval('subject_event_status_subject_event_status_id_seq',(select max(subject_event_status_id)+1 from subject_event_status), false) UNION 
Select 'subject_group_map' table_name ,'subject_group_map_id' Column_name ,setval('subject_group_map_subject_group_map_id_seq',(select max(subject_group_map_id)+1 from subject_group_map), false) UNION 
Select 'usage_statistics_data' table_name ,'id' Column_name ,setval('usage_statistics_data_id_seq',(select max(id)+1 from usage_statistics_data), false) UNION 
Select 'user_account' table_name ,'user_id' Column_name ,setval('user_account_user_id_seq',(select max(user_id)+1 from user_account), false) UNION 
Select 'user_role' table_name ,'role_id' Column_name ,setval('user_role_role_id_seq',(select max(role_id)+1 from user_role), false) UNION 
Select 'user_type' table_name ,'user_type_id' Column_name ,setval('user_type_user_type_id_seq',(select max(user_type_id)+1 from user_type), false) 
Order by table_name ,column_name;


