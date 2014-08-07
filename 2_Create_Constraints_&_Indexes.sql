--2_Create_Constraints_&_Indexes



-- Constraint: pk_user_type

-- ALTER TABLE user_type DROP CONSTRAINT pk_user_type;

ALTER TABLE user_type
  ADD CONSTRAINT pk_user_type PRIMARY KEY(user_type_id);
---------------------------------------------------------------

-- Constraint: pk_study_type

-- ALTER TABLE study_type DROP CONSTRAINT pk_study_type;

ALTER TABLE study_type
  ADD CONSTRAINT pk_study_type PRIMARY KEY(study_type_id);
-------------------------------------------------------------

-- Constraint: pk_user_role

-- ALTER TABLE user_role DROP CONSTRAINT pk_user_role;

ALTER TABLE user_role
  ADD CONSTRAINT pk_user_role PRIMARY KEY(role_id);
-------------------------------------------------------------

-- Constraint: pk_response_type

-- ALTER TABLE response_type DROP CONSTRAINT pk_response_type;

ALTER TABLE response_type
  ADD CONSTRAINT pk_response_type PRIMARY KEY(response_type_id);
---------------------------------------------------------------------

-- Constraint: pk_oc_qrtz_job_details

-- ALTER TABLE oc_qrtz_job_details DROP CONSTRAINT pk_oc_qrtz_job_details;

ALTER TABLE oc_qrtz_job_details
  ADD CONSTRAINT pk_oc_qrtz_job_details PRIMARY KEY(job_name, job_group);
-------------------------------------------------------------------------

-- Constraint: pk_oc_qrtz_triggers

-- ALTER TABLE oc_qrtz_triggers DROP CONSTRAINT pk_oc_qrtz_triggers;

ALTER TABLE oc_qrtz_triggers
  ADD CONSTRAINT pk_oc_qrtz_triggers PRIMARY KEY(trigger_name, trigger_group);
--------------------------------------------------------------------------------

-- Constraint: pk_section

-- ALTER TABLE section DROP CONSTRAINT pk_section;

ALTER TABLE section
  ADD CONSTRAINT pk_section PRIMARY KEY(section_id);
---------------------------------------------------------------------

-- Constraint: pk_response_set

-- ALTER TABLE response_set DROP CONSTRAINT pk_response_set;

ALTER TABLE response_set
  ADD CONSTRAINT pk_response_set PRIMARY KEY(response_set_id);
------------------------------------------------------------------------

-- Constraint: pk_item_data_type

-- ALTER TABLE item_data_type DROP CONSTRAINT pk_item_data_type;

ALTER TABLE item_data_type
  ADD CONSTRAINT pk_item_data_type PRIMARY KEY(item_data_type_id);
--------------------------------------------------------------------

-- Constraint: pk_item_reference_type

-- ALTER TABLE item_reference_type DROP CONSTRAINT pk_item_reference_type;

ALTER TABLE item_reference_type
  ADD CONSTRAINT pk_item_reference_type PRIMARY KEY(item_reference_type_id);
-----------------------------------------------------------------

-- Constraint: pk_study_event_definition

-- ALTER TABLE study_event_definition DROP CONSTRAINT pk_study_event_definition;

ALTER TABLE study_event_definition
  ADD CONSTRAINT pk_study_event_definition PRIMARY KEY(study_event_definition_id);
---------------------------------------------------------------
-- Constraint: pk_subject

-- ALTER TABLE subject DROP CONSTRAINT pk_subject;

ALTER TABLE subject
  ADD CONSTRAINT pk_subject PRIMARY KEY(subject_id);
-----------------------------------------------------------------
-- Constraint: pk_study_subject

-- ALTER TABLE study_subject DROP CONSTRAINT pk_study_subject;

ALTER TABLE study_subject
  ADD CONSTRAINT pk_study_subject PRIMARY KEY(study_subject_id);
--------------------------------------------------------------------
-- Constraint: pk_study_event

-- ALTER TABLE study_event DROP CONSTRAINT pk_study_event;

ALTER TABLE study_event
  ADD CONSTRAINT pk_study_event PRIMARY KEY(study_event_id);
-------------------------------------------------------
-- Constraint: pk_item_data

-- ALTER TABLE item_data DROP CONSTRAINT pk_item_data;

ALTER TABLE item_data
  ADD CONSTRAINT pk_item_data PRIMARY KEY(item_data_id);
-----------------------------------------------------------------
-- Constraint: pk_event_crf

-- ALTER TABLE event_crf DROP CONSTRAINT pk_event_crf;

ALTER TABLE event_crf
  ADD CONSTRAINT pk_event_crf PRIMARY KEY(event_crf_id);
-------------------------------------------------------------------
-- Constraint: pk_resolution_status

-- ALTER TABLE resolution_status DROP CONSTRAINT pk_resolution_status;

ALTER TABLE resolution_status
  ADD CONSTRAINT pk_resolution_status PRIMARY KEY(resolution_status_id);
---------------------------------------------------------------------------
-- Constraint: pk_discrepancy_note_type

-- ALTER TABLE discrepancy_note_type DROP CONSTRAINT pk_discrepancy_note_type;

ALTER TABLE discrepancy_note_type
  ADD CONSTRAINT pk_discrepancy_note_type PRIMARY KEY(discrepancy_note_type_id);
-------------------------------------------------------------------------
-- Constraint: pk_item

-- ALTER TABLE item DROP CONSTRAINT pk_item;

ALTER TABLE item
  ADD CONSTRAINT pk_item PRIMARY KEY(item_id);
---------------------------------------------------------------------
-- Constraint: pk_decision_condition

-- ALTER TABLE decision_condition DROP CONSTRAINT pk_decision_condition;

ALTER TABLE decision_condition
  ADD CONSTRAINT pk_decision_condition PRIMARY KEY(decision_condition_id);
-----------------------------------------------------------------------------
-- Constraint: pk_dc_event

-- ALTER TABLE dc_event DROP CONSTRAINT pk_dc_event;

ALTER TABLE dc_event
  ADD CONSTRAINT pk_dc_event PRIMARY KEY(dc_event_id);
-----------------------------------------------------------------------
-- Constraint: pk_study_group_class

-- ALTER TABLE study_group_class DROP CONSTRAINT pk_study_group_class;

ALTER TABLE study_group_class
  ADD CONSTRAINT pk_study_group_class PRIMARY KEY(study_group_class_id);
---------------------------------------------------------------------
-- Constraint: pk_filter

-- ALTER TABLE filter DROP CONSTRAINT pk_filter;

ALTER TABLE filter
  ADD CONSTRAINT pk_filter PRIMARY KEY(filter_id);
-------------------------------------------------------------
-- Constraint: pk_event_definition_crf

-- ALTER TABLE event_definition_crf DROP CONSTRAINT pk_event_definition_crf;

ALTER TABLE event_definition_crf
  ADD CONSTRAINT pk_event_definition_crf PRIMARY KEY(event_definition_crf_id);
------------------------------------------------------------------------
-- Constraint: pk_dataset_item_status

-- ALTER TABLE dataset_item_status DROP CONSTRAINT pk_dataset_item_status;

ALTER TABLE dataset_item_status
  ADD CONSTRAINT pk_dataset_item_status PRIMARY KEY(dataset_item_status_id);
-----------------------------------------------------------------------
-- Constraint: pk_study

-- ALTER TABLE study DROP CONSTRAINT pk_study;

ALTER TABLE study
  ADD CONSTRAINT pk_study PRIMARY KEY(study_id);
---------------------------------------------------------
-- Constraint: pk_status

-- ALTER TABLE status DROP CONSTRAINT pk_status;

ALTER TABLE status
  ADD CONSTRAINT pk_status PRIMARY KEY(status_id);
-----------------------------------------------
-- Constraint: pk_user_account

-- ALTER TABLE user_account DROP CONSTRAINT pk_user_account;

ALTER TABLE user_account
  ADD CONSTRAINT pk_user_account PRIMARY KEY(user_id);
--------------------------------------------------------------

-- Constraint: pk_export_format

-- ALTER TABLE export_format DROP CONSTRAINT pk_export_format;

ALTER TABLE export_format
  ADD CONSTRAINT pk_export_format PRIMARY KEY(export_format_id);
-------------------------------------------------------------------

-- Constraint: pk_dataset

-- ALTER TABLE dataset DROP CONSTRAINT pk_dataset;

ALTER TABLE dataset
  ADD CONSTRAINT pk_dataset PRIMARY KEY(dataset_id);
--------------------------------------------------------------------

-- Constraint: pk_archived_dataset_file

-- ALTER TABLE archived_dataset_file DROP CONSTRAINT pk_archived_dataset_file;

ALTER TABLE archived_dataset_file
  ADD CONSTRAINT pk_archived_dataset_file PRIMARY KEY(archived_dataset_file_id);

-------------------------------------------------------------------------------
-- Foreign Key: fk_archived_reference_dataset

-- ALTER TABLE archived_dataset_file DROP CONSTRAINT fk_archived_reference_dataset;

ALTER TABLE archived_dataset_file
  ADD CONSTRAINT fk_archived_reference_dataset FOREIGN KEY (dataset_id)
      REFERENCES dataset (dataset_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------------------
-- Foreign Key: fk_archived_reference_export_f

-- ALTER TABLE archived_dataset_file DROP CONSTRAINT fk_archived_reference_export_f;

ALTER TABLE archived_dataset_file
  ADD CONSTRAINT fk_archived_reference_export_f FOREIGN KEY (export_format_id)
      REFERENCES export_format (export_format_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------------------------
-- Constraint: pk_audit_event

-- ALTER TABLE audit_event DROP CONSTRAINT pk_audit_event;

ALTER TABLE audit_event
  ADD CONSTRAINT pk_audit_event PRIMARY KEY(audit_id);
------------------------------------------------------------------
-- Index: i_audit_event_audit_table

-- DROP INDEX i_audit_event_audit_table;

CREATE INDEX i_audit_event_audit_table
  ON audit_event
  USING btree
  (audit_table);
-----------------------------------------------------------
-- Index: i_audit_event_entity_id

-- DROP INDEX i_audit_event_entity_id;

CREATE INDEX i_audit_event_entity_id
  ON audit_event
  USING btree
  (entity_id);
---------------------------------------------------------
-- Index: i_audit_event_user_id

-- DROP INDEX i_audit_event_user_id;

CREATE INDEX i_audit_event_user_id
  ON audit_event
  USING btree
  (user_id);
-------------------------------------------------------------------------
-- Foreign Key: fk_audit_ev_reference_audit_ev

-- ALTER TABLE audit_event_context DROP CONSTRAINT fk_audit_ev_reference_audit_ev;

ALTER TABLE audit_event_context
  ADD CONSTRAINT fk_audit_ev_reference_audit_ev FOREIGN KEY (audit_id)
      REFERENCES audit_event (audit_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------------
-- Index: i_audit_event_context_study_id

-- DROP INDEX i_audit_event_context_study_id;

CREATE INDEX i_audit_event_context_study_id
  ON audit_event_context
  USING btree
  (study_id);
-------------------------------------------------------------------------
-- Foreign Key: fk_audit_lo_ref_audit_lo

-- ALTER TABLE audit_event_values DROP CONSTRAINT fk_audit_lo_ref_audit_lo;

ALTER TABLE audit_event_values
  ADD CONSTRAINT fk_audit_lo_ref_audit_lo FOREIGN KEY (audit_id)
      REFERENCES audit_event (audit_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
------------------------------------------------------------------------
-- Constraint: pk_audit_log_event

-- ALTER TABLE audit_log_event DROP CONSTRAINT pk_audit_log_event;

ALTER TABLE audit_log_event
  ADD CONSTRAINT pk_audit_log_event PRIMARY KEY(audit_id);
---------------------------------------------------------------------
-- Index: i_audit_log_event_audit_log_event_type_id

-- DROP INDEX i_audit_log_event_audit_log_event_type_id;

CREATE INDEX i_audit_log_event_audit_log_event_type_id
  ON audit_log_event
  USING btree
  (audit_log_event_type_id);
-------------------------------------------------------------------
-- Index: i_audit_log_event_audit_table

-- DROP INDEX i_audit_log_event_audit_table;

CREATE INDEX i_audit_log_event_audit_table
  ON audit_log_event
  USING btree
  (audit_table);
----------------------------------------------------------------------
-- Index: i_audit_log_event_entity_id

-- DROP INDEX i_audit_log_event_entity_id;

CREATE INDEX i_audit_log_event_entity_id
  ON audit_log_event
  USING btree
  (entity_id);
----------------------------------------------------------------------
-- Index: i_audit_log_event_event_crf_id

-- DROP INDEX i_audit_log_event_event_crf_id;

CREATE INDEX i_audit_log_event_event_crf_id
  ON audit_log_event
  USING btree
  (event_crf_id);
------------------------------------------------------------------------
-- Index: i_audit_log_event_event_crf_version_id

-- DROP INDEX i_audit_log_event_event_crf_version_id;

CREATE INDEX i_audit_log_event_event_crf_version_id
  ON audit_log_event
  USING btree
  (event_crf_version_id);
-----------------------------------------------------------------------
-- Index: i_audit_log_event_study_event_id

-- DROP INDEX i_audit_log_event_study_event_id;

CREATE INDEX i_audit_log_event_study_event_id
  ON audit_log_event
  USING btree
  (study_event_id);
------------------------------------------------------------------------
-- Index: i_audit_log_event_user_id

-- DROP INDEX i_audit_log_event_user_id;

CREATE INDEX i_audit_log_event_user_id
  ON audit_log_event
  USING btree
  (user_id);
------------------------------------------------------------------------
-- Constraint: pk_audit_log_event_type

-- ALTER TABLE audit_log_event_type DROP CONSTRAINT pk_audit_log_event_type;

ALTER TABLE audit_log_event_type
  ADD CONSTRAINT pk_audit_log_event_type PRIMARY KEY(audit_log_event_type_id);
--------------------------------------------------------------------------
-- Constraint: pk_audit_user_login

-- ALTER TABLE audit_user_login DROP CONSTRAINT pk_audit_user_login;

ALTER TABLE audit_user_login
  ADD CONSTRAINT pk_audit_user_login PRIMARY KEY(id);
-----------------------------------------------------------------------------
-- Foreign Key: fk_audit_user_login_id

-- ALTER TABLE audit_user_login DROP CONSTRAINT fk_audit_user_login_id;

ALTER TABLE audit_user_login
  ADD CONSTRAINT fk_audit_user_login_id FOREIGN KEY (user_account_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
-----------------------------------------------------------------------------
-- Constraint: pk_completion_status

-- ALTER TABLE completion_status DROP CONSTRAINT pk_completion_status;

ALTER TABLE completion_status
  ADD CONSTRAINT pk_completion_status PRIMARY KEY(completion_status_id);
-------------------------------------------------------------------------------
-- Foreign Key: fk_completi_fk_comple_status

-- ALTER TABLE completion_status DROP CONSTRAINT fk_completi_fk_comple_status;

ALTER TABLE completion_status
  ADD CONSTRAINT fk_completi_fk_comple_status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------------------
-- Index: i_completion_status_status_id

-- DROP INDEX i_completion_status_status_id;

CREATE INDEX i_completion_status_status_id
  ON completion_status
  USING btree
  (status_id);
---------------------------------------------------------
-- Constraint: pk_configuration

-- ALTER TABLE "configuration" DROP CONSTRAINT pk_configuration;

ALTER TABLE "configuration"
  ADD CONSTRAINT pk_configuration PRIMARY KEY(id);
------------------------------------------------------------------
-- Constraint: configuration_key_key

-- ALTER TABLE "configuration" DROP CONSTRAINT configuration_key_key;

ALTER TABLE "configuration"
  ADD CONSTRAINT configuration_key_key UNIQUE(key);
---------------------------------------------------------------------
-- Index: i_key_index

-- DROP INDEX i_key_index;

CREATE INDEX i_key_index
  ON "configuration"
  USING btree
  (key);
-----------------------------------------------------------
-- Constraint: pk_crf

-- ALTER TABLE crf DROP CONSTRAINT pk_crf;

ALTER TABLE crf
  ADD CONSTRAINT pk_crf PRIMARY KEY(crf_id);
-----------------------------------------------------------
-- Foreign Key: fk_crf_crf_user_user_acc

-- ALTER TABLE crf DROP CONSTRAINT fk_crf_crf_user_user_acc;

ALTER TABLE crf
  ADD CONSTRAINT fk_crf_crf_user_user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-------------------------------------------------------------------
-- Foreign Key: fk_crf_fk_crf_fk_status

-- ALTER TABLE crf DROP CONSTRAINT fk_crf_fk_crf_fk_status;

ALTER TABLE crf
  ADD CONSTRAINT fk_crf_fk_crf_fk_status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------
-- Foreign Key: fk_source_study_id

-- ALTER TABLE crf DROP CONSTRAINT fk_source_study_id;

ALTER TABLE crf
  ADD CONSTRAINT fk_source_study_id FOREIGN KEY (source_study_id)
      REFERENCES study (study_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
------------------------------------------------------------------------
-- Constraint: uniq_crf_oc_oid

-- ALTER TABLE crf DROP CONSTRAINT uniq_crf_oc_oid;

ALTER TABLE crf
  ADD CONSTRAINT uniq_crf_oc_oid UNIQUE(oc_oid);
---------------------------------------------------------------------
-- Index: i_crf_name

-- DROP INDEX i_crf_name;

CREATE INDEX i_crf_name
  ON crf
  USING btree
  (name);
--------------------------------------------------
-- Index: i_crf_oc_oid

-- DROP INDEX i_crf_oc_oid;

CREATE INDEX i_crf_oc_oid
  ON crf
  USING btree
  (oc_oid);
----------------------------------------------------
-- Index: i_crf_owner_id

-- DROP INDEX i_crf_owner_id;

CREATE INDEX i_crf_owner_id
  ON crf
  USING btree
  (owner_id);
-------------------------------------------------------
-- Index: i_crf_status_id

-- DROP INDEX i_crf_status_id;

CREATE INDEX i_crf_status_id
  ON crf
  USING btree
  (status_id);
-------------------------------------------------------
-- Constraint: pk_crf_version

-- ALTER TABLE crf_version DROP CONSTRAINT pk_crf_version;

ALTER TABLE crf_version
  ADD CONSTRAINT pk_crf_version PRIMARY KEY(crf_version_id);
-----------------------------------------------------------------
-- Foreign Key: fk_crf_vers_crf_versi_user_acc

-- ALTER TABLE crf_version DROP CONSTRAINT fk_crf_vers_crf_versi_user_acc;

ALTER TABLE crf_version
  ADD CONSTRAINT fk_crf_vers_crf_versi_user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-------------------------------------------------------------------
-- Foreign Key: fk_crf_vers_fk_crf_ve_status

-- ALTER TABLE crf_version DROP CONSTRAINT fk_crf_vers_fk_crf_ve_status;

ALTER TABLE crf_version
  ADD CONSTRAINT fk_crf_vers_fk_crf_ve_status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------
-- Foreign Key: fk_versioni_reference_instrume

-- ALTER TABLE crf_version DROP CONSTRAINT fk_versioni_reference_instrume;

ALTER TABLE crf_version
  ADD CONSTRAINT fk_versioni_reference_instrume FOREIGN KEY (crf_id)
      REFERENCES crf (crf_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE NO ACTION;
-----------------------------------------------------------------------
-- Constraint: uniq_crf_version_oc_oid

-- ALTER TABLE crf_version DROP CONSTRAINT uniq_crf_version_oc_oid;

ALTER TABLE crf_version
  ADD CONSTRAINT uniq_crf_version_oc_oid UNIQUE(oc_oid);
-------------------------------------------------------------------
-- Index: crf_version_idx_crf

-- DROP INDEX crf_version_idx_crf;

CREATE INDEX crf_version_idx_crf
  ON crf_version
  USING btree
  (crf_id);
--------------------------------------------------------
-- Index: i_crf_version_name

-- DROP INDEX i_crf_version_name;

CREATE INDEX i_crf_version_name
  ON crf_version
  USING btree
  (name);
-------------------------------------------------------------
-- Index: i_crf_version_oc_oid

-- DROP INDEX i_crf_version_oc_oid;

CREATE INDEX i_crf_version_oc_oid
  ON crf_version
  USING btree
  (oc_oid);
--------------------------------------------------------------
-- Index: i_crf_version_status_id

-- DROP INDEX i_crf_version_status_id;

CREATE INDEX i_crf_version_status_id
  ON crf_version
  USING btree
  (status_id);
-------------------------------------------------------------
-- Constraint: pk_databasechangelog

-- ALTER TABLE databasechangelog DROP CONSTRAINT pk_databasechangelog;

--ALTER TABLE databasechangelog
--  ADD CONSTRAINT pk_databasechangelog PRIMARY KEY(id, author, filename);
-----------------------------------------------------------------------
-- Constraint: pk_databasechangeloglock

-- ALTER TABLE databasechangeloglock DROP CONSTRAINT pk_databasechangeloglock;

ALTER TABLE databasechangeloglock
  ADD CONSTRAINT pk_databasechangeloglock PRIMARY KEY(id);
--------------------------------------------------------------------------
-- Foreign Key: dataset_fk_dataset_item_status

-- ALTER TABLE dataset DROP CONSTRAINT dataset_fk_dataset_item_status;

ALTER TABLE dataset
  ADD CONSTRAINT dataset_fk_dataset_item_status FOREIGN KEY (dataset_item_status_id)
      REFERENCES dataset_item_status (dataset_item_status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
------------------------------------------------------------------------
-- Foreign Key: fk_dataset_fk_datase_status

-- ALTER TABLE dataset DROP CONSTRAINT fk_dataset_fk_datase_status;

ALTER TABLE dataset
  ADD CONSTRAINT fk_dataset_fk_datase_status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------
-- Foreign Key: fk_dataset_fk_datase_study

-- ALTER TABLE dataset DROP CONSTRAINT fk_dataset_fk_datase_study;

ALTER TABLE dataset
  ADD CONSTRAINT fk_dataset_fk_datase_study FOREIGN KEY (study_id)
      REFERENCES study (study_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------
-- Foreign Key: fk_dataset_fk_datase_user_acc

-- ALTER TABLE dataset DROP CONSTRAINT fk_dataset_fk_datase_user_acc;

ALTER TABLE dataset
  ADD CONSTRAINT fk_dataset_fk_datase_user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------------
-- Index: i_dataset_status_id

-- DROP INDEX i_dataset_status_id;

CREATE INDEX i_dataset_status_id
  ON dataset
  USING btree
  (status_id);
------------------------------------------------------------------
-- Foreign Key: fk_dataset__ref_event_event_de

-- ALTER TABLE dataset_crf_version_map DROP CONSTRAINT fk_dataset__ref_event_event_de;

ALTER TABLE dataset_crf_version_map
  ADD CONSTRAINT fk_dataset__ref_event_event_de FOREIGN KEY (event_definition_crf_id)
      REFERENCES event_definition_crf (event_definition_crf_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------
-- Foreign Key: fk_dataset_crf_ref_dataset

-- ALTER TABLE dataset_crf_version_map DROP CONSTRAINT fk_dataset_crf_ref_dataset;

ALTER TABLE dataset_crf_version_map
  ADD CONSTRAINT fk_dataset_crf_ref_dataset FOREIGN KEY (dataset_id)
      REFERENCES dataset (dataset_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------------
-- Index: i_dataset_crf_version_map_dataset_id

-- DROP INDEX i_dataset_crf_version_map_dataset_id;

CREATE INDEX i_dataset_crf_version_map_dataset_id
  ON dataset_crf_version_map
  USING btree
  (dataset_id);
----------------------------------------------------------------------
-- Index: i_dataset_crf_version_map_event_definition_crf_id

-- DROP INDEX i_dataset_crf_version_map_event_definition_crf_id;

CREATE INDEX i_dataset_crf_version_map_event_definition_crf_id
  ON dataset_crf_version_map
  USING btree
  (event_definition_crf_id);
----------------------------------------------------------------------
-- Foreign Key: fk_dataset_reference_dataset

-- ALTER TABLE dataset_filter_map DROP CONSTRAINT fk_dataset_reference_dataset;

ALTER TABLE dataset_filter_map
  ADD CONSTRAINT fk_dataset_reference_dataset FOREIGN KEY (dataset_id)
      REFERENCES dataset (dataset_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------------
-- Foreign Key: fk_dataset_reference_filter

-- ALTER TABLE dataset_filter_map DROP CONSTRAINT fk_dataset_reference_filter;

ALTER TABLE dataset_filter_map
  ADD CONSTRAINT fk_dataset_reference_filter FOREIGN KEY (filter_id)
      REFERENCES filter (filter_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------------------
-- Index: i_dataset_filter_map_dataset_id

-- DROP INDEX i_dataset_filter_map_dataset_id;

CREATE INDEX i_dataset_filter_map_dataset_id
  ON dataset_filter_map
  USING btree
  (dataset_id);
-------------------------------------------------------------------------
-- Index: i_dataset_filter_map_filter_id

-- DROP INDEX i_dataset_filter_map_filter_id;

CREATE INDEX i_dataset_filter_map_filter_id
  ON dataset_filter_map
  USING btree
  (filter_id);
-----------------------------------------------------------------
-- Index: i_dataset_filter_map_ordinal

-- DROP INDEX i_dataset_filter_map_ordinal;

CREATE INDEX i_dataset_filter_map_ordinal
  ON dataset_filter_map
  USING btree
  (ordinal);
-------------------------------------------------------------------
-- Foreign Key: fk_dataset_ref_study_grp_class

-- ALTER TABLE dataset_study_group_class_map DROP CONSTRAINT fk_dataset_ref_study_grp_class;

ALTER TABLE dataset_study_group_class_map
  ADD CONSTRAINT fk_dataset_ref_study_grp_class FOREIGN KEY (study_group_class_id)
      REFERENCES study_group_class (study_group_class_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------------
-- Foreign Key: fk_dataset_study_ref_dataset

-- ALTER TABLE dataset_study_group_class_map DROP CONSTRAINT fk_dataset_study_ref_dataset;

ALTER TABLE dataset_study_group_class_map
  ADD CONSTRAINT fk_dataset_study_ref_dataset FOREIGN KEY (dataset_id)
      REFERENCES dataset (dataset_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------------------
-- Index: i_dataset_study_group_class_map_dataset_id

-- DROP INDEX i_dataset_study_group_class_map_dataset_id;

CREATE INDEX i_dataset_study_group_class_map_dataset_id
  ON dataset_study_group_class_map
  USING btree
  (dataset_id);
---------------------------------------------------------------------------
-- Index: i_dataset_study_group_class_map_study_group_class_id

-- DROP INDEX i_dataset_study_group_class_map_study_group_class_id;

CREATE INDEX i_dataset_study_group_class_map_study_group_class_id
  ON dataset_study_group_class_map
  USING btree
  (study_group_class_id);
--------------------------------------------------------------------------
-- Constraint: pk_dc_computed_event

-- ALTER TABLE dc_computed_event DROP CONSTRAINT pk_dc_computed_event;

ALTER TABLE dc_computed_event
  ADD CONSTRAINT pk_dc_computed_event PRIMARY KEY(dc_summary_event_id);
----------------------------------------------------------------------------
-- Foreign Key: fk_dc_compu_fk_dc_com_dc_event

-- ALTER TABLE dc_computed_event DROP CONSTRAINT fk_dc_compu_fk_dc_com_dc_event;

ALTER TABLE dc_computed_event
  ADD CONSTRAINT fk_dc_compu_fk_dc_com_dc_event FOREIGN KEY (dc_event_id)
      REFERENCES dc_event (dc_event_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
------------------------------------------------------------------------
-- Index: i_dc_computed_event_dc_event_id

-- DROP INDEX i_dc_computed_event_dc_event_id;

CREATE INDEX i_dc_computed_event_dc_event_id
  ON dc_computed_event
  USING btree
  (dc_event_id);
----------------------------------------------------------------------
-- Index: i_dc_computed_event_item_target_id

-- DROP INDEX i_dc_computed_event_item_target_id;

CREATE INDEX i_dc_computed_event_item_target_id
  ON dc_computed_event
  USING btree
  (item_target_id);
-----------------------------------------------------------------------
-- Foreign Key: fk_dc_event_fk_dc_eve_decision

-- ALTER TABLE dc_event DROP CONSTRAINT fk_dc_event_fk_dc_eve_decision;

ALTER TABLE dc_event
  ADD CONSTRAINT fk_dc_event_fk_dc_eve_decision FOREIGN KEY (decision_condition_id)
      REFERENCES decision_condition (decision_condition_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------------
-- Constraint: pk_dc_primitive

-- ALTER TABLE dc_primitive DROP CONSTRAINT pk_dc_primitive;

ALTER TABLE dc_primitive
  ADD CONSTRAINT pk_dc_primitive PRIMARY KEY(dc_primitive_id);
-----------------------------------------------------------------------
-- Foreign Key: fk_dc_primi_fk_dc_pri_decision

-- ALTER TABLE dc_primitive DROP CONSTRAINT fk_dc_primi_fk_dc_pri_decision;

ALTER TABLE dc_primitive
  ADD CONSTRAINT fk_dc_primi_fk_dc_pri_decision FOREIGN KEY (decision_condition_id)
      REFERENCES decision_condition (decision_condition_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------
-- Foreign Key: fk_dc_primi_fk_dc_pri_item

-- ALTER TABLE dc_primitive DROP CONSTRAINT fk_dc_primi_fk_dc_pri_item;

ALTER TABLE dc_primitive
  ADD CONSTRAINT fk_dc_primi_fk_dc_pri_item FOREIGN KEY (dynamic_value_item_id)
      REFERENCES item (item_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------
-- Foreign Key: fk_dc_primi_fk_item_i_item

-- ALTER TABLE dc_primitive DROP CONSTRAINT fk_dc_primi_fk_item_i_item;

ALTER TABLE dc_primitive
  ADD CONSTRAINT fk_dc_primi_fk_item_i_item FOREIGN KEY (item_id)
      REFERENCES item (item_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------
-- Index: i_dc_primitive_decision_condition_id

-- DROP INDEX i_dc_primitive_decision_condition_id;

CREATE INDEX i_dc_primitive_decision_condition_id
  ON dc_primitive
  USING btree
  (decision_condition_id);
--------------------------------------------------------------------
-- Index: i_dc_primitive_dynamic_value_item_id

-- DROP INDEX i_dc_primitive_dynamic_value_item_id;

CREATE INDEX i_dc_primitive_dynamic_value_item_id
  ON dc_primitive
  USING btree
  (dynamic_value_item_id);
----------------------------------------------------------------
-- Index: i_dc_primitive_item_id

-- DROP INDEX i_dc_primitive_item_id;

CREATE INDEX i_dc_primitive_item_id
  ON dc_primitive
  USING btree
  (item_id);
-----------------------------------------------------------------
-- Constraint: pk_dc_section_event

-- ALTER TABLE dc_section_event DROP CONSTRAINT pk_dc_section_event;

ALTER TABLE dc_section_event
  ADD CONSTRAINT pk_dc_section_event PRIMARY KEY(dc_event_id);
-----------------------------------------------------------------------
-- Foreign Key: fk_dc_secti_fk_dc_sec_dc_event

-- ALTER TABLE dc_section_event DROP CONSTRAINT fk_dc_secti_fk_dc_sec_dc_event;

ALTER TABLE dc_section_event
  ADD CONSTRAINT fk_dc_secti_fk_dc_sec_dc_event FOREIGN KEY (dc_event_id)
      REFERENCES dc_event (dc_event_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------------
-- Index: i_dc_section_event_section_id

-- DROP INDEX i_dc_section_event_section_id;

CREATE INDEX i_dc_section_event_section_id
  ON dc_section_event
  USING btree
  (section_id);
-------------------------------------------------------------------
-- Constraint: pk_dc_send_email_event

-- ALTER TABLE dc_send_email_event DROP CONSTRAINT pk_dc_send_email_event;

ALTER TABLE dc_send_email_event
  ADD CONSTRAINT pk_dc_send_email_event PRIMARY KEY(dc_event_id);
--------------------------------------------------------------------
-- Foreign Key: fk_dc_send__dc_send_e_dc_event

-- ALTER TABLE dc_send_email_event DROP CONSTRAINT fk_dc_send__dc_send_e_dc_event;

ALTER TABLE dc_send_email_event
  ADD CONSTRAINT fk_dc_send__dc_send_e_dc_event FOREIGN KEY (dc_event_id)
      REFERENCES dc_event (dc_event_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------
-- Constraint: pk_dc_substitution_event

-- ALTER TABLE dc_substitution_event DROP CONSTRAINT pk_dc_substitution_event;

ALTER TABLE dc_substitution_event
  ADD CONSTRAINT pk_dc_substitution_event PRIMARY KEY(dc_event_id);
---------------------------------------------------------------------------
-- Foreign Key: fk_dc_subst_fk_dc_sub_dc_event

-- ALTER TABLE dc_substitution_event DROP CONSTRAINT fk_dc_subst_fk_dc_sub_dc_event;

ALTER TABLE dc_substitution_event
  ADD CONSTRAINT fk_dc_subst_fk_dc_sub_dc_event FOREIGN KEY (dc_event_id)
      REFERENCES dc_event (dc_event_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------------------
-- Foreign Key: fk_dc_subst_fk_dc_sub_item

-- ALTER TABLE dc_substitution_event DROP CONSTRAINT fk_dc_subst_fk_dc_sub_item;

ALTER TABLE dc_substitution_event
  ADD CONSTRAINT fk_dc_subst_fk_dc_sub_item FOREIGN KEY (item_id)
      REFERENCES item (item_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------------------
-- Index: i_dc_substitution_event_item_id

-- DROP INDEX i_dc_substitution_event_item_id;

CREATE INDEX i_dc_substitution_event_item_id
  ON dc_substitution_event
  USING btree
  (item_id);
--------------------------------------------------------------------
-- Foreign Key: fk_dc_summa_fk_dc_sum_dc_compu

-- ALTER TABLE dc_summary_item_map DROP CONSTRAINT fk_dc_summa_fk_dc_sum_dc_compu;

ALTER TABLE dc_summary_item_map
  ADD CONSTRAINT fk_dc_summa_fk_dc_sum_dc_compu FOREIGN KEY (dc_summary_event_id)
      REFERENCES dc_computed_event (dc_summary_event_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------
-- Foreign Key: fk_dc_summa_fk_dc_sum_item

-- ALTER TABLE dc_summary_item_map DROP CONSTRAINT fk_dc_summa_fk_dc_sum_item;

ALTER TABLE dc_summary_item_map
  ADD CONSTRAINT fk_dc_summa_fk_dc_sum_item FOREIGN KEY (item_id)
      REFERENCES item (item_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------------
-- Index: i_dc_summary_item_map_item_id

-- DROP INDEX i_dc_summary_item_map_item_id;

CREATE INDEX i_dc_summary_item_map_item_id
  ON dc_summary_item_map
  USING btree
  (item_id);
-------------------------------------------------------------------
-- Foreign Key: fk_decision_fk_decisi_crf_vers

-- ALTER TABLE decision_condition DROP CONSTRAINT fk_decision_fk_decisi_crf_vers;

ALTER TABLE decision_condition
  ADD CONSTRAINT fk_decision_fk_decisi_crf_vers FOREIGN KEY (crf_version_id)
      REFERENCES crf_version (crf_version_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
------------------------------------------------------------------------------
-- Foreign Key: fk_decision_fk_decisi_status

-- ALTER TABLE decision_condition DROP CONSTRAINT fk_decision_fk_decisi_status;

ALTER TABLE decision_condition
  ADD CONSTRAINT fk_decision_fk_decisi_status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------------------
-- Foreign Key: fk_decision_fk_decisi_user_acc

-- ALTER TABLE decision_condition DROP CONSTRAINT fk_decision_fk_decisi_user_acc;

ALTER TABLE decision_condition
  ADD CONSTRAINT fk_decision_fk_decisi_user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
------------------------------------------------------------
-- Index: i_decision_condition_crf_version_id

-- DROP INDEX i_decision_condition_crf_version_id;

CREATE INDEX i_decision_condition_crf_version_id
  ON decision_condition
  USING btree
  (crf_version_id);
------------------------------------------------------------------------
-- Index: i_decision_condition_status_id

-- DROP INDEX i_decision_condition_status_id;

CREATE INDEX i_decision_condition_status_id
  ON decision_condition
  USING btree
  (status_id);
--------------------------------------------------------------------------
-- Constraint: pk_discrepancy_note

-- ALTER TABLE discrepancy_note DROP CONSTRAINT pk_discrepancy_note;

ALTER TABLE discrepancy_note
  ADD CONSTRAINT pk_discrepancy_note PRIMARY KEY(discrepancy_note_id);
-------------------------------------------------------------------------
-- Foreign Key: discrepancy_note_asn_u_id_fkey

-- ALTER TABLE discrepancy_note DROP CONSTRAINT discrepancy_note_asn_u_id_fkey;

ALTER TABLE discrepancy_note
  ADD CONSTRAINT discrepancy_note_asn_u_id_fkey FOREIGN KEY (assigned_user_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------------
-- Foreign Key: discrepancy_note_owner_id_fkey

-- ALTER TABLE discrepancy_note DROP CONSTRAINT discrepancy_note_owner_id_fkey;

ALTER TABLE discrepancy_note
  ADD CONSTRAINT discrepancy_note_owner_id_fkey FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------------
-- Foreign Key: discrepancy_note_study_id_fkey

-- ALTER TABLE discrepancy_note DROP CONSTRAINT discrepancy_note_study_id_fkey;

ALTER TABLE discrepancy_note
  ADD CONSTRAINT discrepancy_note_study_id_fkey FOREIGN KEY (study_id)
      REFERENCES study (study_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------------------
-- Foreign Key: dn_discrepancy_note_type_id_fk

-- ALTER TABLE discrepancy_note DROP CONSTRAINT dn_discrepancy_note_type_id_fk;

ALTER TABLE discrepancy_note
  ADD CONSTRAINT dn_discrepancy_note_type_id_fk FOREIGN KEY (discrepancy_note_type_id)
      REFERENCES discrepancy_note_type (discrepancy_note_type_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------------
-- Foreign Key: dn_resolution_status_id_fkey

-- ALTER TABLE discrepancy_note DROP CONSTRAINT dn_resolution_status_id_fkey;

ALTER TABLE discrepancy_note
  ADD CONSTRAINT dn_resolution_status_id_fkey FOREIGN KEY (resolution_status_id)
      REFERENCES resolution_status (resolution_status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-------------------------------------------------------------------------------
-- Index: discrepancy_note_idx_entity_type

-- DROP INDEX discrepancy_note_idx_entity_type;

CREATE INDEX discrepancy_note_idx_entity_type
  ON discrepancy_note
  USING btree
  (entity_type);
--------------------------------------------------------------------
-- Index: discrepancy_note_idx_parent

-- DROP INDEX discrepancy_note_idx_parent;

CREATE INDEX discrepancy_note_idx_parent
  ON discrepancy_note
  USING btree
  (discrepancy_note_id)
  WHERE parent_dn_id IS NULL OR parent_dn_id = 0;
---------------------------------------------------------------------
-- Index: i_discrepancy_note_discrepancy_note_type_id

-- DROP INDEX i_discrepancy_note_discrepancy_note_type_id;

CREATE INDEX i_discrepancy_note_discrepancy_note_type_id
  ON discrepancy_note
  USING btree
  (discrepancy_note_type_id);
-----------------------------------------------------------------
-- Index: i_discrepancy_note_entity_type

-- DROP INDEX i_discrepancy_note_entity_type;

CREATE INDEX i_discrepancy_note_entity_type
  ON discrepancy_note
  USING btree
  (entity_type);
--------------------------------------------------------------
-- Index: i_discrepancy_note_owner_id

-- DROP INDEX i_discrepancy_note_owner_id;

CREATE INDEX i_discrepancy_note_owner_id
  ON discrepancy_note
  USING btree
  (owner_id);
----------------------------------------------------------
-- Index: i_discrepancy_note_parent_dn_id

-- DROP INDEX i_discrepancy_note_parent_dn_id;

CREATE INDEX i_discrepancy_note_parent_dn_id
  ON discrepancy_note
  USING btree
  (parent_dn_id);
------------------------------------------------------------
-- Index: i_discrepancy_note_resolution_status_id

-- DROP INDEX i_discrepancy_note_resolution_status_id;

CREATE INDEX i_discrepancy_note_resolution_status_id
  ON discrepancy_note
  USING btree
  (resolution_status_id);
-----------------------------------------------------------
-- Index: i_discrepancy_note_study_id

-- DROP INDEX i_discrepancy_note_study_id;

CREATE INDEX i_discrepancy_note_study_id
  ON discrepancy_note
  USING btree
  (study_id);
----------------------------------------------------------
-- Foreign Key: dn_event_crf_map_dn_id_fkey

-- ALTER TABLE dn_event_crf_map DROP CONSTRAINT dn_event_crf_map_dn_id_fkey;

ALTER TABLE dn_event_crf_map
  ADD CONSTRAINT dn_event_crf_map_dn_id_fkey FOREIGN KEY (discrepancy_note_id)
      REFERENCES discrepancy_note (discrepancy_note_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------------------
-- Foreign Key: dn_evnt_crf_map_evnt_crf_id_fk

-- ALTER TABLE dn_event_crf_map DROP CONSTRAINT dn_evnt_crf_map_evnt_crf_id_fk;

ALTER TABLE dn_event_crf_map
  ADD CONSTRAINT dn_evnt_crf_map_evnt_crf_id_fk FOREIGN KEY (event_crf_id)
      REFERENCES event_crf (event_crf_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------------------
-- Index: i_dn_event_crf_map_discrepancy_note_id

-- DROP INDEX i_dn_event_crf_map_discrepancy_note_id;

CREATE INDEX i_dn_event_crf_map_discrepancy_note_id
  ON dn_event_crf_map
  USING btree
  (discrepancy_note_id);
-------------------------------------------------------------------------------
-- Index: i_dn_event_crf_map_event_crf_id

-- DROP INDEX i_dn_event_crf_map_event_crf_id;

CREATE INDEX i_dn_event_crf_map_event_crf_id
  ON dn_event_crf_map
  USING btree
  (event_crf_id);
-------------------------------------------------------------------
-- Foreign Key: dn_item_data_map_dn_id_fkey

-- ALTER TABLE dn_item_data_map DROP CONSTRAINT dn_item_data_map_dn_id_fkey;

ALTER TABLE dn_item_data_map
  ADD CONSTRAINT dn_item_data_map_dn_id_fkey FOREIGN KEY (discrepancy_note_id)
      REFERENCES discrepancy_note (discrepancy_note_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------------------
-- Foreign Key: dn_itm_data_map_itm_data_id_fk

-- ALTER TABLE dn_item_data_map DROP CONSTRAINT dn_itm_data_map_itm_data_id_fk;

ALTER TABLE dn_item_data_map
  ADD CONSTRAINT dn_itm_data_map_itm_data_id_fk FOREIGN KEY (item_data_id)
      REFERENCES item_data (item_data_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------------------------
-- Index: i_dn_item_data_map_discrepancy_note_id

-- DROP INDEX i_dn_item_data_map_discrepancy_note_id;

CREATE INDEX i_dn_item_data_map_discrepancy_note_id
  ON dn_item_data_map
  USING btree
  (discrepancy_note_id);
--------------------------------------------------------------------
-- Index: i_dn_item_data_map_item_data_id

-- DROP INDEX i_dn_item_data_map_item_data_id;

CREATE INDEX i_dn_item_data_map_item_data_id
  ON dn_item_data_map
  USING btree
  (item_data_id);
---------------------------------------------------------------------
-- Foreign Key: dn_sem_study_event_id_fkey

-- ALTER TABLE dn_study_event_map DROP CONSTRAINT dn_sem_study_event_id_fkey;

ALTER TABLE dn_study_event_map
  ADD CONSTRAINT dn_sem_study_event_id_fkey FOREIGN KEY (study_event_id)
      REFERENCES study_event (study_event_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
------------------------------------------------------------------------
-- Foreign Key: dn_study_event_map_dn_id_fkey

-- ALTER TABLE dn_study_event_map DROP CONSTRAINT dn_study_event_map_dn_id_fkey;

ALTER TABLE dn_study_event_map
  ADD CONSTRAINT dn_study_event_map_dn_id_fkey FOREIGN KEY (discrepancy_note_id)
      REFERENCES discrepancy_note (discrepancy_note_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
------------------------------------------------------------------------------
-- Index: i_dn_study_event_map_discrepancy_note_id

-- DROP INDEX i_dn_study_event_map_discrepancy_note_id;

CREATE INDEX i_dn_study_event_map_discrepancy_note_id
  ON dn_study_event_map
  USING btree
  (discrepancy_note_id);
-----------------------------------------------------------------------
-- Index: i_dn_study_event_map_study_event_id

-- DROP INDEX i_dn_study_event_map_study_event_id;

CREATE INDEX i_dn_study_event_map_study_event_id
  ON dn_study_event_map
  USING btree
  (study_event_id);
-----------------------------------------------------------------------
-- Foreign Key: dn_ssm_study_subject_id_fkey

-- ALTER TABLE dn_study_subject_map DROP CONSTRAINT dn_ssm_study_subject_id_fkey;

ALTER TABLE dn_study_subject_map
  ADD CONSTRAINT dn_ssm_study_subject_id_fkey FOREIGN KEY (study_subject_id)
      REFERENCES study_subject (study_subject_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------
-- Foreign Key: dn_study_subject_map_dn_id_fk

-- ALTER TABLE dn_study_subject_map DROP CONSTRAINT dn_study_subject_map_dn_id_fk;

ALTER TABLE dn_study_subject_map
  ADD CONSTRAINT dn_study_subject_map_dn_id_fk FOREIGN KEY (discrepancy_note_id)
      REFERENCES discrepancy_note (discrepancy_note_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------
-- Index: i_dn_study_subject_map_discrepancy_note_id

-- DROP INDEX i_dn_study_subject_map_discrepancy_note_id;

CREATE INDEX i_dn_study_subject_map_discrepancy_note_id
  ON dn_study_subject_map
  USING btree
  (discrepancy_note_id);
------------------------------------------------------------------------
-- Index: i_dn_study_subject_map_study_subject_id

-- DROP INDEX i_dn_study_subject_map_study_subject_id;

CREATE INDEX i_dn_study_subject_map_study_subject_id
  ON dn_study_subject_map
  USING btree
  (study_subject_id);
----------------------------------------------------------------------
-- Foreign Key: dn_subject_map_dn_id_fkey

-- ALTER TABLE dn_subject_map DROP CONSTRAINT dn_subject_map_dn_id_fkey;

ALTER TABLE dn_subject_map
  ADD CONSTRAINT dn_subject_map_dn_id_fkey FOREIGN KEY (discrepancy_note_id)
      REFERENCES discrepancy_note (discrepancy_note_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------
-- Foreign Key: dn_subject_map_subject_id_fkey

-- ALTER TABLE dn_subject_map DROP CONSTRAINT dn_subject_map_subject_id_fkey;

ALTER TABLE dn_subject_map
  ADD CONSTRAINT dn_subject_map_subject_id_fkey FOREIGN KEY (subject_id)
      REFERENCES subject (subject_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------
-- Index: i_dn_subject_map_discrepancy_note_id

-- DROP INDEX i_dn_subject_map_discrepancy_note_id;

CREATE INDEX i_dn_subject_map_discrepancy_note_id
  ON dn_subject_map
  USING btree
  (discrepancy_note_id);
--------------------------------------------------------------------------
-- Index: i_dn_subject_map_subject_id

-- DROP INDEX i_dn_subject_map_subject_id;

CREATE INDEX i_dn_subject_map_subject_id
  ON dn_subject_map
  USING btree
  (subject_id);
-------------------------------------------------------------------------
-- Constraint: pk_dyn_item_form_metadata

-- ALTER TABLE dyn_item_form_metadata DROP CONSTRAINT pk_dyn_item_form_metadata;

ALTER TABLE dyn_item_form_metadata
  ADD CONSTRAINT pk_dyn_item_form_metadata PRIMARY KEY(id);
---------------------------------------------------------------------
-- Constraint: pk_dyn_item_group_metadata

-- ALTER TABLE dyn_item_group_metadata DROP CONSTRAINT pk_dyn_item_group_metadata;

ALTER TABLE dyn_item_group_metadata
  ADD CONSTRAINT pk_dyn_item_group_metadata PRIMARY KEY(id);
-------------------------------------------------------------------------
-- Foreign Key: fk_event_cr_fk_event__completi

-- ALTER TABLE event_crf DROP CONSTRAINT fk_event_cr_fk_event__completi;

ALTER TABLE event_crf
  ADD CONSTRAINT fk_event_cr_fk_event__completi FOREIGN KEY (completion_status_id)
      REFERENCES completion_status (completion_status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
------------------------------------------------------------------------
-- Foreign Key: fk_event_cr_fk_event__status

-- ALTER TABLE event_crf DROP CONSTRAINT fk_event_cr_fk_event__status;

ALTER TABLE event_crf
  ADD CONSTRAINT fk_event_cr_fk_event__status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------------
-- Foreign Key: fk_event_cr_fk_event__study_ev

-- ALTER TABLE event_crf DROP CONSTRAINT fk_event_cr_fk_event__study_ev;

ALTER TABLE event_crf
  ADD CONSTRAINT fk_event_cr_fk_event__study_ev FOREIGN KEY (study_event_id)
      REFERENCES study_event (study_event_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------------
-- Foreign Key: fk_event_cr_fk_event__user_acc

-- ALTER TABLE event_crf DROP CONSTRAINT fk_event_cr_fk_event__user_acc;

ALTER TABLE event_crf
  ADD CONSTRAINT fk_event_cr_fk_event__user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------
-- Foreign Key: fk_event_cr_reference_study_su

-- ALTER TABLE event_crf DROP CONSTRAINT fk_event_cr_reference_study_su;

ALTER TABLE event_crf
  ADD CONSTRAINT fk_event_cr_reference_study_su FOREIGN KEY (study_subject_id)
      REFERENCES study_subject (study_subject_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------
-- Foreign Key: fk_subject_referenc_instrument

-- ALTER TABLE event_crf DROP CONSTRAINT fk_subject_referenc_instrument;

ALTER TABLE event_crf
  ADD CONSTRAINT fk_subject_referenc_instrument FOREIGN KEY (crf_version_id)
      REFERENCES crf_version (crf_version_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------------
-- Index: i_event_crf_completion_status_id

-- DROP INDEX i_event_crf_completion_status_id;

CREATE INDEX i_event_crf_completion_status_id
  ON event_crf
  USING btree
  (completion_status_id);
--------------------------------------------------------------------------
-- Index: i_event_crf_date_interviewed

-- DROP INDEX i_event_crf_date_interviewed;

CREATE INDEX i_event_crf_date_interviewed
  ON event_crf
  USING btree
  (date_interviewed);
----------------------------------------------------------------------
-- Index: i_event_crf_interviewer_name

-- DROP INDEX i_event_crf_interviewer_name;

CREATE INDEX i_event_crf_interviewer_name
  ON event_crf
  USING btree
  (interviewer_name);
------------------------------------------------------------------
-- Index: i_event_crf_owner_id

-- DROP INDEX i_event_crf_owner_id;

CREATE INDEX i_event_crf_owner_id
  ON event_crf
  USING btree
  (owner_id);
-------------------------------------------------------------------
-- Index: i_event_crf_status_id

-- DROP INDEX i_event_crf_status_id;

CREATE INDEX i_event_crf_status_id
  ON event_crf
  USING btree
  (status_id);
----------------------------------------------------------------
-- Index: i_event_crf_study_subject_id

-- DROP INDEX i_event_crf_study_subject_id;

CREATE INDEX i_event_crf_study_subject_id
  ON event_crf
  USING btree
  (study_subject_id);
--------------------------------------------------------------------
-- Index: i_event_crf_validator_id

-- DROP INDEX i_event_crf_validator_id;

CREATE INDEX i_event_crf_validator_id
  ON event_crf
  USING btree
  (validator_id);
---------------------------------------------------
-- Foreign Key: fk_event_de_fk_study__status

-- ALTER TABLE event_definition_crf DROP CONSTRAINT fk_event_de_fk_study__status;

ALTER TABLE event_definition_crf
  ADD CONSTRAINT fk_event_de_fk_study__status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------------------
-- Foreign Key: fk_event_de_reference_study_ev

-- ALTER TABLE event_definition_crf DROP CONSTRAINT fk_event_de_reference_study_ev;

ALTER TABLE event_definition_crf
  ADD CONSTRAINT fk_event_de_reference_study_ev FOREIGN KEY (study_event_definition_id)
      REFERENCES study_event_definition (study_event_definition_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------------------
-- Foreign Key: fk_event_de_study_crf_user_acc

-- ALTER TABLE event_definition_crf DROP CONSTRAINT fk_event_de_study_crf_user_acc;

ALTER TABLE event_definition_crf
  ADD CONSTRAINT fk_event_de_study_crf_user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------------
-- Foreign Key: fk_study_inst_reference

-- ALTER TABLE event_definition_crf DROP CONSTRAINT fk_study_inst_reference;

ALTER TABLE event_definition_crf
  ADD CONSTRAINT fk_study_inst_reference FOREIGN KEY (crf_id)
      REFERENCES crf (crf_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE NO ACTION;
------------------------------------------------------------------------
-- Foreign Key: fk_study_reference_instrument

-- ALTER TABLE event_definition_crf DROP CONSTRAINT fk_study_reference_instrument;

ALTER TABLE event_definition_crf
  ADD CONSTRAINT fk_study_reference_instrument FOREIGN KEY (study_id)
      REFERENCES study (study_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE NO ACTION;
------------------------------------------------------------------------------
-- Foreign Key: fk_versioning_study_inst

-- ALTER TABLE event_definition_crf DROP CONSTRAINT fk_versioning_study_inst;

ALTER TABLE event_definition_crf
  ADD CONSTRAINT fk_versioning_study_inst FOREIGN KEY (default_version_id)
      REFERENCES crf_version (crf_version_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE SET NULL;
--------------------------------------------------------------------------
-- Index: event_definition_crf_idx_crf

-- DROP INDEX event_definition_crf_idx_crf;

CREATE INDEX event_definition_crf_idx_crf
  ON event_definition_crf
  USING btree
  (crf_id);
-------------------------------------------------------------------
-- Index: event_definition_crf_idx_parent_null

-- DROP INDEX event_definition_crf_idx_parent_null;

CREATE INDEX event_definition_crf_idx_parent_null
  ON event_definition_crf
  USING btree
  (parent_id)
  WHERE parent_id IS NULL;
-------------------------------------------------------------------
-- Index: event_definition_crf_idx_parent_zero

-- DROP INDEX event_definition_crf_idx_parent_zero;

CREATE INDEX event_definition_crf_idx_parent_zero
  ON event_definition_crf
  USING btree
  (parent_id)
  WHERE parent_id IS NOT NULL OR parent_id <> 0;
------------------------------------------------------------------
-- Index: event_definition_crf_idx_study_event_definition

-- DROP INDEX event_definition_crf_idx_study_event_definition;

CREATE INDEX event_definition_crf_idx_study_event_definition
  ON event_definition_crf
  USING btree
  (study_event_definition_id);
----------------------------------------------------------------
-- Index: i_event_definition_crf_crf_id

-- DROP INDEX i_event_definition_crf_crf_id;

CREATE INDEX i_event_definition_crf_crf_id
  ON event_definition_crf
  USING btree
  (crf_id);
----------------------------------------------------------------
-- Index: i_event_definition_crf_default_version_id

-- DROP INDEX i_event_definition_crf_default_version_id;

CREATE INDEX i_event_definition_crf_default_version_id
  ON event_definition_crf
  USING btree
  (default_version_id);
---------------------------------------------------------------
-- Index: i_event_definition_crf_electronic_signature

-- DROP INDEX i_event_definition_crf_electronic_signature;

CREATE INDEX i_event_definition_crf_electronic_signature
  ON event_definition_crf
  USING btree
  (electronic_signature);
-----------------------------------------------------------
-- Index: i_event_definition_crf_ordinal

-- DROP INDEX i_event_definition_crf_ordinal;

CREATE INDEX i_event_definition_crf_ordinal
  ON event_definition_crf
  USING btree
  (ordinal);
---------------------------------------------------------------
-- Index: i_event_definition_crf_status_id

-- DROP INDEX i_event_definition_crf_status_id;

CREATE INDEX i_event_definition_crf_status_id
  ON event_definition_crf
  USING btree
  (status_id);
------------------------------------------------------------------
-- Index: i_event_definition_crf_study_id

-- DROP INDEX i_event_definition_crf_study_id;

CREATE INDEX i_event_definition_crf_study_id
  ON event_definition_crf
  USING btree
  (study_id);
---------------------------------------------------------------
-- Foreign Key: fk_filter_fk_query__status

-- ALTER TABLE filter DROP CONSTRAINT fk_filter_fk_query__status;

ALTER TABLE filter
  ADD CONSTRAINT fk_filter_fk_query__status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------
-- Foreign Key: fk_filter_fk_query__user_acc

-- ALTER TABLE filter DROP CONSTRAINT fk_filter_fk_query__user_acc;

ALTER TABLE filter
  ADD CONSTRAINT fk_filter_fk_query__user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
------------------------------------------------------------------
-- Foreign Key: fk_filter_c_reference_crf_vers

-- ALTER TABLE filter_crf_version_map DROP CONSTRAINT fk_filter_c_reference_crf_vers;

ALTER TABLE filter_crf_version_map
  ADD CONSTRAINT fk_filter_c_reference_crf_vers FOREIGN KEY (crf_version_id)
      REFERENCES crf_version (crf_version_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-------------------------------------------------------------------------
-- Foreign Key: fk_filter_c_reference_filter

-- ALTER TABLE filter_crf_version_map DROP CONSTRAINT fk_filter_c_reference_filter;

ALTER TABLE filter_crf_version_map
  ADD CONSTRAINT fk_filter_c_reference_filter FOREIGN KEY (filter_id)
      REFERENCES filter (filter_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-------------------------------------------------------------------------
-- Index: i_filter_crf_version_map_crf_version_id

-- DROP INDEX i_filter_crf_version_map_crf_version_id;

CREATE INDEX i_filter_crf_version_map_crf_version_id
  ON filter_crf_version_map
  USING btree
  (crf_version_id);
-----------------------------------------------------------------------------
-- Index: i_filter_crf_version_map_filter_id

-- DROP INDEX i_filter_crf_version_map_filter_id;

CREATE INDEX i_filter_crf_version_map_filter_id
  ON filter_crf_version_map
  USING btree
  (filter_id);
-----------------------------------------------------------------------
-- Constraint: pk_group_class_types

-- ALTER TABLE group_class_types DROP CONSTRAINT pk_group_class_types;

ALTER TABLE group_class_types
  ADD CONSTRAINT pk_group_class_types PRIMARY KEY(group_class_type_id);
--------------------------------------------------------------------------------
-- Foreign Key: fk_item_fk_item_f_item_ref

-- ALTER TABLE item DROP CONSTRAINT fk_item_fk_item_f_item_ref;

ALTER TABLE item
  ADD CONSTRAINT fk_item_fk_item_f_item_ref FOREIGN KEY (item_reference_type_id)
      REFERENCES item_reference_type (item_reference_type_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-------------------------------------------------------------------------
-- Foreign Key: fk_item_fk_item_i_item_dat

-- ALTER TABLE item DROP CONSTRAINT fk_item_fk_item_i_item_dat;

ALTER TABLE item
  ADD CONSTRAINT fk_item_fk_item_i_item_dat FOREIGN KEY (item_data_type_id)
      REFERENCES item_data_type (item_data_type_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
------------------------------------------------------------------------
-- Foreign Key: fk_item_fk_item_s_status

-- ALTER TABLE item DROP CONSTRAINT fk_item_fk_item_s_status;

ALTER TABLE item
  ADD CONSTRAINT fk_item_fk_item_s_status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-------------------------------------------------------------------------
-- Foreign Key: fk_item_fk_item_u_user_acc

-- ALTER TABLE item DROP CONSTRAINT fk_item_fk_item_u_user_acc;

ALTER TABLE item
  ADD CONSTRAINT fk_item_fk_item_u_user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------------------
-- Constraint: uniq_item_oc_oid

-- ALTER TABLE item DROP CONSTRAINT uniq_item_oc_oid;

ALTER TABLE item
  ADD CONSTRAINT uniq_item_oc_oid UNIQUE(oc_oid);
-----------------------------------------------------------------------
-- Index: i_item_item_data_type_id

-- DROP INDEX i_item_item_data_type_id;

CREATE INDEX i_item_item_data_type_id
  ON item
  USING btree
  (item_data_type_id);
----------------------------------------------------------
-- Index: i_item_item_reference_type_id

-- DROP INDEX i_item_item_reference_type_id;

CREATE INDEX i_item_item_reference_type_id
  ON item
  USING btree
  (item_reference_type_id);
---------------------------------------------------------------
-- Index: i_item_name

-- DROP INDEX i_item_name;

CREATE INDEX i_item_name
  ON item
  USING btree
  (name);
---------------------------------------------------
-- Index: i_item_oc_oid

-- DROP INDEX i_item_oc_oid;

CREATE INDEX i_item_oc_oid
  ON item
  USING btree
  (oc_oid);
--------------------------------------------------
-- Index: i_item_units

-- DROP INDEX i_item_units;

CREATE INDEX i_item_units
  ON item
  USING btree
  (units);
-------------------------------------------------------
-- Foreign Key: fk_answer_reference_item

-- ALTER TABLE item_data DROP CONSTRAINT fk_answer_reference_item;

ALTER TABLE item_data
  ADD CONSTRAINT fk_answer_reference_item FOREIGN KEY (item_id)
      REFERENCES item (item_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE NO ACTION;
----------------------------------------------------------------
-- Foreign Key: fk_item_dat_fk_item_d_status

-- ALTER TABLE item_data DROP CONSTRAINT fk_item_dat_fk_item_d_status;

ALTER TABLE item_data
  ADD CONSTRAINT fk_item_dat_fk_item_d_status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-------------------------------------------------------------------
-- Foreign Key: fk_item_dat_fk_item_d_user_acc

-- ALTER TABLE item_data DROP CONSTRAINT fk_item_dat_fk_item_d_user_acc;

ALTER TABLE item_data
  ADD CONSTRAINT fk_item_dat_fk_item_d_user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------------
-- Foreign Key: fk_item_reference_subject

-- ALTER TABLE item_data DROP CONSTRAINT fk_item_reference_subject;

ALTER TABLE item_data
  ADD CONSTRAINT fk_item_reference_subject FOREIGN KEY (event_crf_id)
      REFERENCES event_crf (event_crf_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE NO ACTION;
----------------------------------------------------------------------
-- Constraint: pk_item_data_new

-- ALTER TABLE item_data DROP CONSTRAINT pk_item_data_new;

ALTER TABLE item_data
  ADD CONSTRAINT pk_item_data_new UNIQUE(item_id, event_crf_id, ordinal);
--------------------------------------------------------------------------
-- Index: i_item_data_event_crf_id

-- DROP INDEX i_item_data_event_crf_id;

CREATE INDEX i_item_data_event_crf_id
  ON item_data
  USING btree
  (event_crf_id);
------------------------------------------------------
-- Index: i_item_data_item_id

-- DROP INDEX i_item_data_item_id;

CREATE INDEX i_item_data_item_id
  ON item_data
  USING btree
  (item_id);
-------------------------------------------------------
-- Index: i_item_data_ordinal

-- DROP INDEX i_item_data_ordinal;

CREATE INDEX i_item_data_ordinal
  ON item_data
  USING btree
  (ordinal);
------------------------------------------------------------
-- Index: i_item_data_status_id

-- DROP INDEX i_item_data_status_id;

CREATE INDEX i_item_data_status_id
  ON item_data
  USING btree
  (status_id);
--------------------------------------------------------------
-- Constraint: pk_item_form_metadata

-- ALTER TABLE item_form_metadata DROP CONSTRAINT pk_item_form_metadata;

ALTER TABLE item_form_metadata
  ADD CONSTRAINT pk_item_form_metadata PRIMARY KEY(item_form_metadata_id);
----------------------------------------------------------------------
-- Foreign Key: fk_item_id

-- ALTER TABLE item_form_metadata DROP CONSTRAINT fk_item_id;

ALTER TABLE item_form_metadata
  ADD CONSTRAINT fk_item_id FOREIGN KEY (item_id)
      REFERENCES item (item_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE NO ACTION;
----------------------------------------------------------------
-- Foreign Key: fk_rs_id

-- ALTER TABLE item_form_metadata DROP CONSTRAINT fk_rs_id;

ALTER TABLE item_form_metadata
  ADD CONSTRAINT fk_rs_id FOREIGN KEY (response_set_id)
      REFERENCES response_set (response_set_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE NO ACTION;
----------------------------------------------------------------
-- Foreign Key: fk_sec_id

-- ALTER TABLE item_form_metadata DROP CONSTRAINT fk_sec_id;

ALTER TABLE item_form_metadata
  ADD CONSTRAINT fk_sec_id FOREIGN KEY (section_id)
      REFERENCES section (section_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE NO ACTION;
-------------------------------------------------------------------
-- Index: i_item_form_metadata_decision_condition_id

-- DROP INDEX i_item_form_metadata_decision_condition_id;

CREATE INDEX i_item_form_metadata_decision_condition_id
  ON item_form_metadata
  USING btree
  (decision_condition_id);
-------------------------------------------------------------
-- Index: i_item_form_metadata_ordinal

-- DROP INDEX i_item_form_metadata_ordinal;

CREATE INDEX i_item_form_metadata_ordinal
  ON item_form_metadata
  USING btree
  (ordinal);
-------------------------------------------------------------
-- Index: i_item_form_metadata_parent_id

-- DROP INDEX i_item_form_metadata_parent_id;

CREATE INDEX i_item_form_metadata_parent_id
  ON item_form_metadata
  USING btree
  (parent_id);
--------------------------------------------------------
-- Index: i_itm_form_metadata_crf_ver_id

-- DROP INDEX i_itm_form_metadata_crf_ver_id;

CREATE INDEX i_itm_form_metadata_crf_ver_id
  ON item_form_metadata
  USING btree
  (crf_version_id);
-------------------------------------------------------------
-- Constraint: pk_item_group

-- ALTER TABLE item_group DROP CONSTRAINT pk_item_group;

ALTER TABLE item_group
  ADD CONSTRAINT pk_item_group PRIMARY KEY(item_group_id);
------------------------------------------------------------------
-- Foreign Key: fk_item_gro_fk_item_g_status

-- ALTER TABLE item_group DROP CONSTRAINT fk_item_gro_fk_item_g_status;

ALTER TABLE item_group
  ADD CONSTRAINT fk_item_gro_fk_item_g_status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------
-- Foreign Key: fk_item_gro_fk_item_g_user_acc

-- ALTER TABLE item_group DROP CONSTRAINT fk_item_gro_fk_item_g_user_acc;

ALTER TABLE item_group
  ADD CONSTRAINT fk_item_gro_fk_item_g_user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------
-- Foreign Key: fk_item_group_crf

-- ALTER TABLE item_group DROP CONSTRAINT fk_item_group_crf;

ALTER TABLE item_group
  ADD CONSTRAINT fk_item_group_crf FOREIGN KEY (crf_id)
      REFERENCES crf (crf_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------------
-- Constraint: uniq_item_group_oc_oid

-- ALTER TABLE item_group DROP CONSTRAINT uniq_item_group_oc_oid;

ALTER TABLE item_group
  ADD CONSTRAINT uniq_item_group_oc_oid UNIQUE(oc_oid);
--------------------------------------------------------------------
-- Index: i_item_group_crf_id

-- DROP INDEX i_item_group_crf_id;

CREATE INDEX i_item_group_crf_id
  ON item_group
  USING btree
  (crf_id);
-----------------------------------------------------------
-- Index: i_item_group_status_id

-- DROP INDEX i_item_group_status_id;

CREATE INDEX i_item_group_status_id
  ON item_group
  USING btree
  (status_id);
-----------------------------------------------------------------
-- Constraint: pk_item_group_metadata

-- ALTER TABLE item_group_metadata DROP CONSTRAINT pk_item_group_metadata;

ALTER TABLE item_group_metadata
  ADD CONSTRAINT pk_item_group_metadata PRIMARY KEY(item_group_metadata_id);
--------------------------------------------------------------------------
-- Foreign Key: fk_crf_metadata

-- ALTER TABLE item_group_metadata DROP CONSTRAINT fk_crf_metadata;

ALTER TABLE item_group_metadata
  ADD CONSTRAINT fk_crf_metadata FOREIGN KEY (crf_version_id)
      REFERENCES crf_version (crf_version_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------------------
-- Foreign Key: fk_item

-- ALTER TABLE item_group_metadata DROP CONSTRAINT fk_item;

ALTER TABLE item_group_metadata
  ADD CONSTRAINT fk_item FOREIGN KEY (item_id)
      REFERENCES item (item_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------
-- Foreign Key: fk_item_group

-- ALTER TABLE item_group_metadata DROP CONSTRAINT fk_item_group;

ALTER TABLE item_group_metadata
  ADD CONSTRAINT fk_item_group FOREIGN KEY (item_group_id)
      REFERENCES item_group (item_group_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------
-- Index: i_item_group_metadata_crf_version_id

-- DROP INDEX i_item_group_metadata_crf_version_id;

CREATE INDEX i_item_group_metadata_crf_version_id
  ON item_group_metadata
  USING btree
  (crf_version_id);
----------------------------------------------------------------
-- Index: i_item_group_metadata_item_group_id

-- DROP INDEX i_item_group_metadata_item_group_id;

CREATE INDEX i_item_group_metadata_item_group_id
  ON item_group_metadata
  USING btree
  (item_group_id);
----------------------------------------------------------------
-- Index: i_item_group_metadata_item_id

-- DROP INDEX i_item_group_metadata_item_id;

CREATE INDEX i_item_group_metadata_item_id
  ON item_group_metadata
  USING btree
  (item_id);
-------------------------------------------------------------
-- Constraint: pk_measurement_unit

-- ALTER TABLE measurement_unit DROP CONSTRAINT pk_measurement_unit;

ALTER TABLE measurement_unit
  ADD CONSTRAINT pk_measurement_unit PRIMARY KEY(id);
-----------------------------------------------------------------
-- Constraint: measurement_unit_name_key

-- ALTER TABLE measurement_unit DROP CONSTRAINT measurement_unit_name_key;

ALTER TABLE measurement_unit
  ADD CONSTRAINT measurement_unit_name_key UNIQUE(name);
--------------------------------------------------------------------
-- Constraint: measurement_unit_oc_oid_key

-- ALTER TABLE measurement_unit DROP CONSTRAINT measurement_unit_oc_oid_key;

ALTER TABLE measurement_unit
  ADD CONSTRAINT measurement_unit_oc_oid_key UNIQUE(oc_oid);
----------------------------------------------------------------------
-- Constraint: pk_null_value_type

-- ALTER TABLE null_value_type DROP CONSTRAINT pk_null_value_type;

ALTER TABLE null_value_type
  ADD CONSTRAINT pk_null_value_type PRIMARY KEY(null_value_type_id);
----------------------------------------------------------------------
-- Index: i_null_value_type_code

-- DROP INDEX i_null_value_type_code;

CREATE INDEX i_null_value_type_code
  ON null_value_type
  USING btree
  (code);
-----------------------------------------------------------
-- Constraint: pk_oc_qrtz_blob_triggers

-- ALTER TABLE oc_qrtz_blob_triggers DROP CONSTRAINT pk_oc_qrtz_blob_triggers;

ALTER TABLE oc_qrtz_blob_triggers
  ADD CONSTRAINT pk_oc_qrtz_blob_triggers PRIMARY KEY(trigger_name, trigger_group);
--------------------------------------------------------------------
-- Foreign Key: oc_qrtz_blob_triggers_trg_fkey

-- ALTER TABLE oc_qrtz_blob_triggers DROP CONSTRAINT oc_qrtz_blob_triggers_trg_fkey;

ALTER TABLE oc_qrtz_blob_triggers
  ADD CONSTRAINT oc_qrtz_blob_triggers_trg_fkey FOREIGN KEY (trigger_name, trigger_group)
      REFERENCES oc_qrtz_triggers (trigger_name, trigger_group) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
-------------------------------------------------------------------------------
-- Constraint: pk_oc_qrtz_calendars

-- ALTER TABLE oc_qrtz_calendars DROP CONSTRAINT pk_oc_qrtz_calendars;

ALTER TABLE oc_qrtz_calendars
  ADD CONSTRAINT pk_oc_qrtz_calendars PRIMARY KEY(calendar_name);
------------------------------------------------------------------------
-- Constraint: pk_oc_qrtz_cron_triggers

-- ALTER TABLE oc_qrtz_cron_triggers DROP CONSTRAINT pk_oc_qrtz_cron_triggers;

ALTER TABLE oc_qrtz_cron_triggers
  ADD CONSTRAINT pk_oc_qrtz_cron_triggers PRIMARY KEY(trigger_name, trigger_group);
------------------------------------------------------------------------------
-- Foreign Key: oc_qrtz_cron_triggers_trg_fkey

-- ALTER TABLE oc_qrtz_cron_triggers DROP CONSTRAINT oc_qrtz_cron_triggers_trg_fkey;

ALTER TABLE oc_qrtz_cron_triggers
  ADD CONSTRAINT oc_qrtz_cron_triggers_trg_fkey FOREIGN KEY (trigger_name, trigger_group)
      REFERENCES oc_qrtz_triggers (trigger_name, trigger_group) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
--------------------------------------------------------------------------------
-- Constraint: pk_oc_qrtz_fired_triggers

-- ALTER TABLE oc_qrtz_fired_triggers DROP CONSTRAINT pk_oc_qrtz_fired_triggers;

ALTER TABLE oc_qrtz_fired_triggers
  ADD CONSTRAINT pk_oc_qrtz_fired_triggers PRIMARY KEY(entry_id);
-------------------------------------------------------------------------
------
-- Constraint: pk_oc_qrtz_job_listeners

-- ALTER TABLE oc_qrtz_job_listeners DROP CONSTRAINT pk_oc_qrtz_job_listeners;

ALTER TABLE oc_qrtz_job_listeners
  ADD CONSTRAINT pk_oc_qrtz_job_listeners PRIMARY KEY(job_name, job_group, job_listener);
----------------------------------------------------------------------------
-- Foreign Key: oc_qrtz_job_listeners_job_fkey

-- ALTER TABLE oc_qrtz_job_listeners DROP CONSTRAINT oc_qrtz_job_listeners_job_fkey;

ALTER TABLE oc_qrtz_job_listeners
  ADD CONSTRAINT oc_qrtz_job_listeners_job_fkey FOREIGN KEY (job_name, job_group)
      REFERENCES oc_qrtz_job_details (job_name, job_group) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
--------------------------------------------------------------------------------
-- Constraint: pk_oc_qrtz_locks

-- ALTER TABLE oc_qrtz_locks DROP CONSTRAINT pk_oc_qrtz_locks;

ALTER TABLE oc_qrtz_locks
  ADD CONSTRAINT pk_oc_qrtz_locks PRIMARY KEY(lock_name);
------------------------------------------------------------------------
-- Constraint: pk_oc_qrtz_paused_trigger_grps

-- ALTER TABLE oc_qrtz_paused_trigger_grps DROP CONSTRAINT pk_oc_qrtz_paused_trigger_grps;

ALTER TABLE oc_qrtz_paused_trigger_grps
  ADD CONSTRAINT pk_oc_qrtz_paused_trigger_grps PRIMARY KEY(trigger_group);
-----------------------------------------------------------------------------
-- Constraint: pk_oc_qrtz_scheduler_state

-- ALTER TABLE oc_qrtz_scheduler_state DROP CONSTRAINT pk_oc_qrtz_scheduler_state;

ALTER TABLE oc_qrtz_scheduler_state
  ADD CONSTRAINT pk_oc_qrtz_scheduler_state PRIMARY KEY(instance_name);
--------------------------------------------------------------------------
-- Constraint: pk_oc_qrtz_simple_triggers

-- ALTER TABLE oc_qrtz_simple_triggers DROP CONSTRAINT pk_oc_qrtz_simple_triggers;

ALTER TABLE oc_qrtz_simple_triggers
  ADD CONSTRAINT pk_oc_qrtz_simple_triggers PRIMARY KEY(trigger_name, trigger_group);
------------------------------------------------------------------------
-- Foreign Key: oc_qrtz_simple_trigs_trg_fkey

-- ALTER TABLE oc_qrtz_simple_triggers DROP CONSTRAINT oc_qrtz_simple_trigs_trg_fkey;

ALTER TABLE oc_qrtz_simple_triggers
  ADD CONSTRAINT oc_qrtz_simple_trigs_trg_fkey FOREIGN KEY (trigger_name, trigger_group)
      REFERENCES oc_qrtz_triggers (trigger_name, trigger_group) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
-------------------------------------------------------------------------------
-- Constraint: pk_oc_qrtz_trigger_listeners

-- ALTER TABLE oc_qrtz_trigger_listeners DROP CONSTRAINT pk_oc_qrtz_trigger_listeners;

ALTER TABLE oc_qrtz_trigger_listeners
  ADD CONSTRAINT pk_oc_qrtz_trigger_listeners PRIMARY KEY(trigger_name, trigger_group, trigger_listener);
-------------------------------------------------------------------------------
-- Foreign Key: oc_qrtz_trigger_lsnrs_trg_fkey

-- ALTER TABLE oc_qrtz_trigger_listeners DROP CONSTRAINT oc_qrtz_trigger_lsnrs_trg_fkey;

ALTER TABLE oc_qrtz_trigger_listeners
  ADD CONSTRAINT oc_qrtz_trigger_lsnrs_trg_fkey FOREIGN KEY (trigger_name, trigger_group)
      REFERENCES oc_qrtz_triggers (trigger_name, trigger_group) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
--------------------------------------------------------------------
-- Foreign Key: oc_qrtz_triggers_job_name_fkey

-- ALTER TABLE oc_qrtz_triggers DROP CONSTRAINT oc_qrtz_triggers_job_name_fkey;

ALTER TABLE oc_qrtz_triggers
  ADD CONSTRAINT oc_qrtz_triggers_job_name_fkey FOREIGN KEY (job_name, job_group)
      REFERENCES oc_qrtz_job_details (job_name, job_group) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
----------------------------------------------------------------------------
-- Constraint: pk_openclinica_version

-- ALTER TABLE openclinica_version DROP CONSTRAINT pk_openclinica_version;

ALTER TABLE openclinica_version
  ADD CONSTRAINT pk_openclinica_version PRIMARY KEY(id);
--------------------------------------------------------------------
-- Constraint: pk_privilege

-- ALTER TABLE privilege DROP CONSTRAINT pk_privilege;

ALTER TABLE privilege
  ADD CONSTRAINT pk_privilege PRIMARY KEY(priv_id);
-------------------------------------------------------------------------
-- Foreign Key: fk_response_fk_respon_response

-- ALTER TABLE response_set DROP CONSTRAINT fk_response_fk_respon_response;

ALTER TABLE response_set
  ADD CONSTRAINT fk_response_fk_respon_response FOREIGN KEY (response_type_id)
      REFERENCES response_type (response_type_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
------------------------------------------------------------------------
-- Foreign Key: fk_priv_id

-- ALTER TABLE role_privilege_map DROP CONSTRAINT fk_priv_id;

ALTER TABLE role_privilege_map
  ADD CONSTRAINT fk_priv_id FOREIGN KEY (priv_id)
      REFERENCES privilege (priv_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE NO ACTION;
--------------------------------------------------------------------
-- Foreign Key: fk_role_id

-- ALTER TABLE role_privilege_map DROP CONSTRAINT fk_role_id;

ALTER TABLE role_privilege_map
  ADD CONSTRAINT fk_role_id FOREIGN KEY (role_id)
      REFERENCES user_role (role_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE NO ACTION;
-----------------------------------------------------------------------
-- Constraint: pk_rule

-- ALTER TABLE "rule" DROP CONSTRAINT pk_rule;

ALTER TABLE "rule"
  ADD CONSTRAINT pk_rule PRIMARY KEY(id);
----------------------------------------------------------------------
-- Index: i_rule_oc_oid

-- DROP INDEX i_rule_oc_oid;

CREATE INDEX i_rule_oc_oid
  ON "rule"
  USING btree
  (oc_oid);
------------------------------------------------------------
-- Index: i_rule_rule_expression_id

-- DROP INDEX i_rule_rule_expression_id;

CREATE INDEX i_rule_rule_expression_id
  ON "rule"
  USING btree
  (rule_expression_id);
--------------------------------------------------------------
-- Index: i_rule_status_id

-- DROP INDEX i_rule_status_id;

CREATE INDEX i_rule_status_id
  ON "rule"
  USING btree
  (status_id);
----------------------------------------------------------------
-- Constraint: pk_rule_action

-- ALTER TABLE rule_action DROP CONSTRAINT pk_rule_action;

ALTER TABLE rule_action
  ADD CONSTRAINT pk_rule_action PRIMARY KEY(id);
------------------------------------------------------------------
-- Index: i_rule_action_action_type

-- DROP INDEX i_rule_action_action_type;

CREATE INDEX i_rule_action_action_type
  ON rule_action
  USING btree
  (action_type);
-------------------------------------------------------------
-- Index: i_rule_action_rule_set_rule_id

-- DROP INDEX i_rule_action_rule_set_rule_id;

CREATE INDEX i_rule_action_rule_set_rule_id
  ON rule_action
  USING btree
  (rule_set_rule_id);
----------------------------------------------------------------
-- Index: i_rule_action_status_id

-- DROP INDEX i_rule_action_status_id;

CREATE INDEX i_rule_action_status_id
  ON rule_action
  USING btree
  (status_id);
---------------------------------------------------------------
-- Constraint: pk_rule_action_property

-- ALTER TABLE rule_action_property DROP CONSTRAINT pk_rule_action_property;

ALTER TABLE rule_action_property
  ADD CONSTRAINT pk_rule_action_property PRIMARY KEY(id);
-------------------------------------------------------------------
-- Constraint: pk_rule_action_run

-- ALTER TABLE rule_action_run DROP CONSTRAINT pk_rule_action_run;

ALTER TABLE rule_action_run
  ADD CONSTRAINT pk_rule_action_run PRIMARY KEY(id);
-----------------------------------------------------------------
-- Constraint: pk_rule_action_run_log

-- ALTER TABLE rule_action_run_log DROP CONSTRAINT pk_rule_action_run_log;

ALTER TABLE rule_action_run_log
  ADD CONSTRAINT pk_rule_action_run_log PRIMARY KEY(id);
------------------------------------------------------------------------
-- Constraint: pk_rule_expression

-- ALTER TABLE rule_expression DROP CONSTRAINT pk_rule_expression;

ALTER TABLE rule_expression
  ADD CONSTRAINT pk_rule_expression PRIMARY KEY(id);
----------------------------------------------------------------
-- Index: i_rule_expression_status_id

-- DROP INDEX i_rule_expression_status_id;

CREATE INDEX i_rule_expression_status_id
  ON rule_expression
  USING btree
  (status_id);
------------------------------------------------------------------------
-- Constraint: pk_rule_set

-- ALTER TABLE rule_set DROP CONSTRAINT pk_rule_set;

ALTER TABLE rule_set
  ADD CONSTRAINT pk_rule_set PRIMARY KEY(id);
------------------------------------------------------------------
-- Index: i_rule_set_crf_id

-- DROP INDEX i_rule_set_crf_id;

CREATE INDEX i_rule_set_crf_id
  ON rule_set
  USING btree
  (crf_id);
------------------------------------------------------------
-- Index: i_rule_set_crf_version_id

-- DROP INDEX i_rule_set_crf_version_id;

CREATE INDEX i_rule_set_crf_version_id
  ON rule_set
  USING btree
  (crf_version_id);
-------------------------------------------------------------
-- Index: i_rule_set_rule_expression_id

-- DROP INDEX i_rule_set_rule_expression_id;

CREATE INDEX i_rule_set_rule_expression_id
  ON rule_set
  USING btree
  (rule_expression_id);
------------------------------------------------------------
-- Index: i_rule_set_status_id

-- DROP INDEX i_rule_set_status_id;

CREATE INDEX i_rule_set_status_id
  ON rule_set
  USING btree
  (status_id);
---------------------------------------------------------
-- Index: i_rule_set_study_event_definition_id

-- DROP INDEX i_rule_set_study_event_definition_id;

CREATE INDEX i_rule_set_study_event_definition_id
  ON rule_set
  USING btree
  (study_event_definition_id);
----------------------------------------------------------
-- Index: i_rule_set_study_id

-- DROP INDEX i_rule_set_study_id;

CREATE INDEX i_rule_set_study_id
  ON rule_set
  USING btree
  (study_id);
------------------------------------------------------------
-- Constraint: pk_rule_set_audit

-- ALTER TABLE rule_set_audit DROP CONSTRAINT pk_rule_set_audit;

ALTER TABLE rule_set_audit
  ADD CONSTRAINT pk_rule_set_audit PRIMARY KEY(id);
-------------------------------------------------------------------
-- Index: i_rule_set_audit_rule_set_id

-- DROP INDEX i_rule_set_audit_rule_set_id;

CREATE INDEX i_rule_set_audit_rule_set_id
  ON rule_set_audit
  USING btree
  (rule_set_id);
----------------------------------------------------------------
-- Index: i_rule_set_audit_status_id

-- DROP INDEX i_rule_set_audit_status_id;

CREATE INDEX i_rule_set_audit_status_id
  ON rule_set_audit
  USING btree
  (status_id);
---------------------------------------------------------------
-- Constraint: pk_rule_set_rule

-- ALTER TABLE rule_set_rule DROP CONSTRAINT pk_rule_set_rule;

ALTER TABLE rule_set_rule
  ADD CONSTRAINT pk_rule_set_rule PRIMARY KEY(id);
-------------------------------------------------------------------
-- Index: i_rule_set_rule_rule_id

-- DROP INDEX i_rule_set_rule_rule_id;

CREATE INDEX i_rule_set_rule_rule_id
  ON rule_set_rule
  USING btree
  (rule_id);
-------------------------------------------------------------------
-- Index: i_rule_set_rule_rule_set_id

-- DROP INDEX i_rule_set_rule_rule_set_id;

CREATE INDEX i_rule_set_rule_rule_set_id
  ON rule_set_rule
  USING btree
  (rule_set_id);
---------------------------------------------------------------
-- Index: i_rule_set_rule_status_id

-- DROP INDEX i_rule_set_rule_status_id;

CREATE INDEX i_rule_set_rule_status_id
  ON rule_set_rule
  USING btree
  (status_id);
------------------------------------------------------------
-- Constraint: pk_rule_set_rule_audit

-- ALTER TABLE rule_set_rule_audit DROP CONSTRAINT pk_rule_set_rule_audit;

ALTER TABLE rule_set_rule_audit
  ADD CONSTRAINT pk_rule_set_rule_audit PRIMARY KEY(id);
---------------------------------------------------------------
-- Index: i_rule_set_rule_audit_rule_set_rule_id

-- DROP INDEX i_rule_set_rule_audit_rule_set_rule_id;

CREATE INDEX i_rule_set_rule_audit_rule_set_rule_id
  ON rule_set_rule_audit
  USING btree
  (rule_set_rule_id);
-----------------------------------------------------------------
-- Index: i_rule_set_rule_audit_status_id

-- DROP INDEX i_rule_set_rule_audit_status_id;

CREATE INDEX i_rule_set_rule_audit_status_id
  ON rule_set_rule_audit
  USING btree
  (status_id);
---------------------------------------------------------------
-- Foreign Key: scd_meta_fk_control_meta_id

-- ALTER TABLE scd_item_metadata DROP CONSTRAINT scd_meta_fk_control_meta_id;

ALTER TABLE scd_item_metadata
  ADD CONSTRAINT scd_meta_fk_control_meta_id FOREIGN KEY (control_item_form_metadata_id)
      REFERENCES item_form_metadata (item_form_metadata_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------
-- Foreign Key: scd_meta_fk_scd_form_meta_id

-- ALTER TABLE scd_item_metadata DROP CONSTRAINT scd_meta_fk_scd_form_meta_id;

ALTER TABLE scd_item_metadata
  ADD CONSTRAINT scd_meta_fk_scd_form_meta_id FOREIGN KEY (scd_item_form_metadata_id)
      REFERENCES item_form_metadata (item_form_metadata_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------
-- Foreign Key: fk_section_fk_sectio_status

-- ALTER TABLE section DROP CONSTRAINT fk_section_fk_sectio_status;

ALTER TABLE section
  ADD CONSTRAINT fk_section_fk_sectio_status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------------
-- Foreign Key: fk_section_fk_sectio_user_acc

-- ALTER TABLE section DROP CONSTRAINT fk_section_fk_sectio_user_acc;

ALTER TABLE section
  ADD CONSTRAINT fk_section_fk_sectio_user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------------
-- Foreign Key: fk_section_version

-- ALTER TABLE section DROP CONSTRAINT fk_section_version;

ALTER TABLE section
  ADD CONSTRAINT fk_section_version FOREIGN KEY (crf_version_id)
      REFERENCES crf_version (crf_version_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE NO ACTION;
-----------------------------------------------------------------------
-- Index: i_section_ordinal

-- DROP INDEX i_section_ordinal;

CREATE INDEX i_section_ordinal
  ON section
  USING btree
  (ordinal);
-----------------------------------------------------
-- Index: i_section_parent_id

-- DROP INDEX i_section_parent_id;

CREATE INDEX i_section_parent_id
  ON section
  USING btree
  (parent_id);
---------------------------------------------------------
-- Index: i_section_status_id

-- DROP INDEX i_section_status_id;

CREATE INDEX i_section_status_id
  ON section
  USING btree
  (status_id);
--------------------------------------------------------------
-- Foreign Key: fk_old_status_id

-- ALTER TABLE study DROP CONSTRAINT fk_old_status_id;

ALTER TABLE study
  ADD CONSTRAINT fk_old_status_id FOREIGN KEY (old_status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
----------------------------------------------------------------
-- Foreign Key: fk_study_fk_study__status

-- ALTER TABLE study DROP CONSTRAINT fk_study_fk_study__status;

ALTER TABLE study
  ADD CONSTRAINT fk_study_fk_study__status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------
-- Foreign Key: fk_study_fk_study__user_acc

-- ALTER TABLE study DROP CONSTRAINT fk_study_fk_study__user_acc;

ALTER TABLE study
  ADD CONSTRAINT fk_study_fk_study__user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-------------------------------------------------------------------
-- Foreign Key: fk_study_type

-- ALTER TABLE study DROP CONSTRAINT fk_study_type;

ALTER TABLE study
  ADD CONSTRAINT fk_study_type FOREIGN KEY (type_id)
      REFERENCES study_type (study_type_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------------
-- Foreign Key: project_is_contained_within_pa

-- ALTER TABLE study DROP CONSTRAINT project_is_contained_within_pa;

ALTER TABLE study
  ADD CONSTRAINT project_is_contained_within_pa FOREIGN KEY (parent_study_id)
      REFERENCES study (study_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE SET NULL;
---------------------------------------------------------------------
-- Constraint: uniq_study_oid

-- ALTER TABLE study DROP CONSTRAINT uniq_study_oid;

ALTER TABLE study
  ADD CONSTRAINT uniq_study_oid UNIQUE(oc_oid);
-----------------------------------------------------------------
-- Index: i_study_oc_oid

-- DROP INDEX i_study_oc_oid;

CREATE INDEX i_study_oc_oid
  ON study
  USING btree
  (oc_oid);
-------------------------------------------------
-- Index: i_study_owner_id

-- DROP INDEX i_study_owner_id;

CREATE INDEX i_study_owner_id
  ON study
  USING btree
  (owner_id);
-----------------------------------------------------
-- Index: i_study_parent_study_id

-- DROP INDEX i_study_parent_study_id;

CREATE INDEX i_study_parent_study_id
  ON study
  USING btree
  (parent_study_id);
----------------------------------------------------------
-- Index: i_study_status_id

-- DROP INDEX i_study_status_id;

CREATE INDEX i_study_status_id
  ON study
  USING btree
  (status_id);
-----------------------------------------------------
-- Index: i_study_type_id

-- DROP INDEX i_study_type_id;

CREATE INDEX i_study_type_id
  ON study
  USING btree
  (type_id);
-----------------------------------------------------
-- Index: i_study_unique_identifier

-- DROP INDEX i_study_unique_identifier;

CREATE INDEX i_study_unique_identifier
  ON study
  USING btree
  (name);
------------------------------------------------
-- Foreign Key: fk_study_ev_fk_study__status

-- ALTER TABLE study_event DROP CONSTRAINT fk_study_ev_fk_study__status;

ALTER TABLE study_event
  ADD CONSTRAINT fk_study_ev_fk_study__status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-------------------------------------------------------------
-- Foreign Key: fk_study_ev_fk_study__study_ev

-- ALTER TABLE study_event DROP CONSTRAINT fk_study_ev_fk_study__study_ev;

ALTER TABLE study_event
  ADD CONSTRAINT fk_study_ev_fk_study__study_ev FOREIGN KEY (study_event_definition_id)
      REFERENCES study_event_definition (study_event_definition_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------------
-- Foreign Key: fk_study_ev_fk_study__user_acc

-- ALTER TABLE study_event DROP CONSTRAINT fk_study_ev_fk_study__user_acc;

ALTER TABLE study_event
  ADD CONSTRAINT fk_study_ev_fk_study__user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------
-- Foreign Key: fk_study_ev_reference_study_su

-- ALTER TABLE study_event DROP CONSTRAINT fk_study_ev_reference_study_su;

ALTER TABLE study_event
  ADD CONSTRAINT fk_study_ev_reference_study_su FOREIGN KEY (study_subject_id)
      REFERENCES study_subject (study_subject_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
------------------------------------------------------------------
-- Index: i_study_event_date_end

-- DROP INDEX i_study_event_date_end;

CREATE INDEX i_study_event_date_end
  ON study_event
  USING btree
  (date_end);
---------------------------------------------------
-- Index: i_study_event_date_start

-- DROP INDEX i_study_event_date_start;

CREATE INDEX i_study_event_date_start
  ON study_event
  USING btree
  (date_start);
--------------------------------------------------
-- Index: i_study_event_sample_ordinal

-- DROP INDEX i_study_event_sample_ordinal;

CREATE INDEX i_study_event_sample_ordinal
  ON study_event
  USING btree
  (sample_ordinal);
----------------------------------------------------
-- Index: i_study_event_status_id

-- DROP INDEX i_study_event_status_id;

CREATE INDEX i_study_event_status_id
  ON study_event
  USING btree
  (status_id);
------------------------------------------------------
-- Index: i_study_event_subject_event_status_id

-- DROP INDEX i_study_event_subject_event_status_id;

CREATE INDEX i_study_event_subject_event_status_id
  ON study_event
  USING btree
  (subject_event_status_id);
------------------------------------------------------
-- Index: study_event_idx_study_event_definition

-- DROP INDEX study_event_idx_study_event_definition;

CREATE INDEX study_event_idx_study_event_definition
  ON study_event
  USING btree
  (study_event_definition_id);
------------------------------------------------------
-- Foreign Key: fk_study_ev_fk_study__study

-- ALTER TABLE study_event_definition DROP CONSTRAINT fk_study_ev_fk_study__study;

ALTER TABLE study_event_definition
  ADD CONSTRAINT fk_study_ev_fk_study__study FOREIGN KEY (study_id)
      REFERENCES study (study_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------
-- Foreign Key: fk_study_ev_fk_studye_status

-- ALTER TABLE study_event_definition DROP CONSTRAINT fk_study_ev_fk_studye_status;

ALTER TABLE study_event_definition
  ADD CONSTRAINT fk_study_ev_fk_studye_status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------
-- Foreign Key: fk_study_ev_fk_studye_user_acc

-- ALTER TABLE study_event_definition DROP CONSTRAINT fk_study_ev_fk_studye_user_acc;

ALTER TABLE study_event_definition
  ADD CONSTRAINT fk_study_ev_fk_studye_user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-------------------------------------------------------------------------
-- Constraint: uniq_study_event_def_oid

-- ALTER TABLE study_event_definition DROP CONSTRAINT uniq_study_event_def_oid;

ALTER TABLE study_event_definition
  ADD CONSTRAINT uniq_study_event_def_oid UNIQUE(oc_oid);
-----------------------------------------------------------------------
-- Index: i_study_event_definition_oc_oid

-- DROP INDEX i_study_event_definition_oc_oid;

CREATE INDEX i_study_event_definition_oc_oid
  ON study_event_definition
  USING btree
  (oc_oid);
-------------------------------------------------------------
-- Index: i_study_event_definition_status_id

-- DROP INDEX i_study_event_definition_status_id;

CREATE INDEX i_study_event_definition_status_id
  ON study_event_definition
  USING btree
  (status_id);
--------------------------------------------------------------
-- Index: i_study_event_definition_update_id

-- DROP INDEX i_study_event_definition_update_id;

CREATE INDEX i_study_event_definition_update_id
  ON study_event_definition
  USING btree
  (update_id);
--------------------------------------------------------------
-- Constraint: pk_study_group

-- ALTER TABLE study_group DROP CONSTRAINT pk_study_group;

ALTER TABLE study_group
  ADD CONSTRAINT pk_study_group PRIMARY KEY(study_group_id);
------------------------------------------------------------------
-- Foreign Key: fk_group_class_study_group

-- ALTER TABLE study_group DROP CONSTRAINT fk_group_class_study_group;

ALTER TABLE study_group
  ADD CONSTRAINT fk_group_class_study_group FOREIGN KEY (study_group_class_id)
      REFERENCES study_group_class (study_group_class_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE SET NULL;
-------------------------------------------------------------------
-- Foreign Key: fk_study_gr_fk_study__group_ty

-- ALTER TABLE study_group_class DROP CONSTRAINT fk_study_gr_fk_study__group_ty;

ALTER TABLE study_group_class
  ADD CONSTRAINT fk_study_gr_fk_study__group_ty FOREIGN KEY (group_class_type_id)
      REFERENCES group_class_types (group_class_type_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------
-- Foreign Key: fk_study_gr_fk_study__status

-- ALTER TABLE study_group_class DROP CONSTRAINT fk_study_gr_fk_study__status;

ALTER TABLE study_group_class
  ADD CONSTRAINT fk_study_gr_fk_study__status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
------------------------------------------------------------
-- Foreign Key: fk_study_gr_fk_study__user_acc

-- ALTER TABLE study_group_class DROP CONSTRAINT fk_study_gr_fk_study__user_acc;

ALTER TABLE study_group_class
  ADD CONSTRAINT fk_study_gr_fk_study__user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------
-- Index: i_study_group_class_status_id

-- DROP INDEX i_study_group_class_status_id;

CREATE INDEX i_study_group_class_status_id
  ON study_group_class
  USING btree
  (status_id);
--------------------------------------------------------
-- Index: i_study_group_class_study_id

-- DROP INDEX i_study_group_class_study_id;

CREATE INDEX i_study_group_class_study_id
  ON study_group_class
  USING btree
  (study_id);
------------------------------------------------------------
-- Constraint: pk_study_module_status

-- ALTER TABLE study_module_status DROP CONSTRAINT pk_study_module_status;

ALTER TABLE study_module_status
  ADD CONSTRAINT pk_study_module_status PRIMARY KEY(id);
---------------------------------------------------------
-- Foreign Key: fk_study_module_study_id

-- ALTER TABLE study_module_status DROP CONSTRAINT fk_study_module_study_id;

ALTER TABLE study_module_status
  ADD CONSTRAINT fk_study_module_study_id FOREIGN KEY (study_id)
      REFERENCES study (study_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
-------------------------------------------------------
-- Constraint: pk_study_parameter

-- ALTER TABLE study_parameter DROP CONSTRAINT pk_study_parameter;

ALTER TABLE study_parameter
  ADD CONSTRAINT pk_study_parameter PRIMARY KEY(study_parameter_id);
----------------------------------------------------------------
-- Constraint: study_parameter_handle_key

-- ALTER TABLE study_parameter DROP CONSTRAINT study_parameter_handle_key;

ALTER TABLE study_parameter
  ADD CONSTRAINT study_parameter_handle_key UNIQUE(handle);
-----------------------------------------------------------------
-- Foreign Key: study_param_value_param_fkey

-- ALTER TABLE study_parameter_value DROP CONSTRAINT study_param_value_param_fkey;

ALTER TABLE study_parameter_value
  ADD CONSTRAINT study_param_value_param_fkey FOREIGN KEY (parameter)
      REFERENCES study_parameter (handle) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------------
-- Foreign Key: study_param_value_study_id_fk

-- ALTER TABLE study_parameter_value DROP CONSTRAINT study_param_value_study_id_fk;

ALTER TABLE study_parameter_value
  ADD CONSTRAINT study_param_value_study_id_fk FOREIGN KEY (study_id)
      REFERENCES study (study_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------------
-- Index: i_study_parameter_value_study_id

-- DROP INDEX i_study_parameter_value_study_id;

CREATE INDEX i_study_parameter_value_study_id
  ON study_parameter_value
  USING btree
  (study_id);
------------------------------------------------------
-- Foreign Key: fk_project__reference_study2

-- ALTER TABLE study_subject DROP CONSTRAINT fk_project__reference_study2;

ALTER TABLE study_subject
  ADD CONSTRAINT fk_project__reference_study2 FOREIGN KEY (study_id)
      REFERENCES study (study_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE NO ACTION;
------------------------------------------------------
-- Foreign Key: fk_study_reference_subject

-- ALTER TABLE study_subject DROP CONSTRAINT fk_study_reference_subject;

ALTER TABLE study_subject
  ADD CONSTRAINT fk_study_reference_subject FOREIGN KEY (subject_id)
      REFERENCES subject (subject_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE SET NULL;
------------------------------------------------------
-- Foreign Key: fk_study_su_fk_study__status

-- ALTER TABLE study_subject DROP CONSTRAINT fk_study_su_fk_study__status;

ALTER TABLE study_subject
  ADD CONSTRAINT fk_study_su_fk_study__status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------
-- Foreign Key: fk_study_su_fk_study__user_acc

-- ALTER TABLE study_subject DROP CONSTRAINT fk_study_su_fk_study__user_acc;

ALTER TABLE study_subject
  ADD CONSTRAINT fk_study_su_fk_study__user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------
-- Constraint: uniq_study_subject_oid

-- ALTER TABLE study_subject DROP CONSTRAINT uniq_study_subject_oid;

ALTER TABLE study_subject
  ADD CONSTRAINT uniq_study_subject_oid UNIQUE(oc_oid);
---------------------------------------------------------------
-- Index: i_study_subject_label

-- DROP INDEX i_study_subject_label;

CREATE INDEX i_study_subject_label
  ON study_subject
  USING btree
  (label);
----------------------------------------------------
-- Index: i_study_subject_oc_oid

-- DROP INDEX i_study_subject_oc_oid;

CREATE INDEX i_study_subject_oc_oid
  ON study_subject
  USING btree
  (oc_oid);
----------------------------------------------
-- Index: i_study_subject_status_id

-- DROP INDEX i_study_subject_status_id;

CREATE INDEX i_study_subject_status_id
  ON study_subject
  USING btree
  (status_id);
-------------------------------------------------------
-- Index: study_subject_idx_study

-- DROP INDEX study_subject_idx_study;

CREATE INDEX study_subject_idx_study
  ON study_subject
  USING btree
  (study_id);
-----------------------------------------------------
-- Foreign Key: fk_person_role_study_id

-- ALTER TABLE study_user_role DROP CONSTRAINT fk_person_role_study_id;

ALTER TABLE study_user_role
  ADD CONSTRAINT fk_person_role_study_id FOREIGN KEY (study_id)
      REFERENCES study (study_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE NO ACTION;
--------------------------------------------------------------
-- Foreign Key: fk_study_us_fk_study__status

-- ALTER TABLE study_user_role DROP CONSTRAINT fk_study_us_fk_study__status;

ALTER TABLE study_user_role
  ADD CONSTRAINT fk_study_us_fk_study__status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------
-- Foreign Key: fk_study_us_study_use_user_acc

-- ALTER TABLE study_user_role DROP CONSTRAINT fk_study_us_study_use_user_acc;

ALTER TABLE study_user_role
  ADD CONSTRAINT fk_study_us_study_use_user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------
-- Index: i_study_user_role_user_name

-- DROP INDEX i_study_user_role_user_name;

CREATE INDEX i_study_user_role_user_name
  ON study_user_role
  USING btree
  (user_name);
----------------------------------------------------------------
-- Foreign Key: fk_subject_fk_subjec_status

-- ALTER TABLE subject DROP CONSTRAINT fk_subject_fk_subjec_status;

ALTER TABLE subject
  ADD CONSTRAINT fk_subject_fk_subjec_status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-------------------------------------------------------------------
-- Foreign Key: fk_subject_fk_subjec_user_acc

-- ALTER TABLE subject DROP CONSTRAINT fk_subject_fk_subjec_user_acc;

ALTER TABLE subject
  ADD CONSTRAINT fk_subject_fk_subjec_user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------------
-- Foreign Key: has_father

-- ALTER TABLE subject DROP CONSTRAINT has_father;

ALTER TABLE subject
  ADD CONSTRAINT has_father FOREIGN KEY (father_id)
      REFERENCES subject (subject_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE SET NULL;
--------------------------------------------------------------
-- Foreign Key: has_mother

-- ALTER TABLE subject DROP CONSTRAINT has_mother;

ALTER TABLE subject
  ADD CONSTRAINT has_mother FOREIGN KEY (mother_id)
      REFERENCES subject (subject_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE SET NULL;
-----------------------------------------------------------------
-- Index: i_subject_date_created

-- DROP INDEX i_subject_date_created;

CREATE INDEX i_subject_date_created
  ON subject
  USING btree
  (date_created);
--------------------------------------------------------
-- Index: i_subject_date_of_birth

-- DROP INDEX i_subject_date_of_birth;

CREATE INDEX i_subject_date_of_birth
  ON subject
  USING btree
  (date_of_birth);
----------------------------------------------------
-- Index: i_subject_gender

-- DROP INDEX i_subject_gender;

CREATE INDEX i_subject_gender
  ON subject
  USING btree
  (gender);
---------------------------------------------------
-- Index: i_subject_unique_identifier

-- DROP INDEX i_subject_unique_identifier;

CREATE INDEX i_subject_unique_identifier
  ON subject
  USING btree
  (unique_identifier);
---------------------------------------------------------
-- Constraint: pk_subject_event_status

-- ALTER TABLE subject_event_status DROP CONSTRAINT pk_subject_event_status;

ALTER TABLE subject_event_status
  ADD CONSTRAINT pk_subject_event_status PRIMARY KEY(subject_event_status_id);
----------------------------------------------------------
-- Constraint: pk_subject_group_map

-- ALTER TABLE subject_group_map DROP CONSTRAINT pk_subject_group_map;

ALTER TABLE subject_group_map
  ADD CONSTRAINT pk_subject_group_map PRIMARY KEY(subject_group_map_id);
-------------------------------------------------------------------
-- Foreign Key: fk_subject__fk_sub_gr_user_acc

-- ALTER TABLE subject_group_map DROP CONSTRAINT fk_subject__fk_sub_gr_user_acc;

ALTER TABLE subject_group_map
  ADD CONSTRAINT fk_subject__fk_sub_gr_user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------
-- Foreign Key: fk_subject__fk_subjec_group_ro

-- ALTER TABLE subject_group_map DROP CONSTRAINT fk_subject__fk_subjec_group_ro;

ALTER TABLE subject_group_map
  ADD CONSTRAINT fk_subject__fk_subjec_group_ro FOREIGN KEY (study_group_id)
      REFERENCES study_group (study_group_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------------
-- Foreign Key: fk_subject__fk_subjec_status

-- ALTER TABLE subject_group_map DROP CONSTRAINT fk_subject__fk_subjec_status;

ALTER TABLE subject_group_map
  ADD CONSTRAINT fk_subject__fk_subjec_status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
----------------------------------------------------------------------
-- Foreign Key: fk_subject__fk_subjec_study_gr

-- ALTER TABLE subject_group_map DROP CONSTRAINT fk_subject__fk_subjec_study_gr;

ALTER TABLE subject_group_map
  ADD CONSTRAINT fk_subject__fk_subjec_study_gr FOREIGN KEY (study_group_class_id)
      REFERENCES study_group_class (study_group_class_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
--------------------------------------------------------------------------
-- Foreign Key: fk_subject__subject_g_study_su

-- ALTER TABLE subject_group_map DROP CONSTRAINT fk_subject__subject_g_study_su;

ALTER TABLE subject_group_map
  ADD CONSTRAINT fk_subject__subject_g_study_su FOREIGN KEY (study_subject_id)
      REFERENCES study_subject (study_subject_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-------------------------------------------------------------------
-- Index: i_subject_group_map_status_id

-- DROP INDEX i_subject_group_map_status_id;

CREATE INDEX i_subject_group_map_status_id
  ON subject_group_map
  USING btree
  (status_id);
-----------------------------------------------------------
-- Index: i_subject_group_map_study_group_class_id

-- DROP INDEX i_subject_group_map_study_group_class_id;

CREATE INDEX i_subject_group_map_study_group_class_id
  ON subject_group_map
  USING btree
  (study_group_class_id);
------------------------------------------------------------
-- Constraint: pk_usage_statistics_data

-- ALTER TABLE usage_statistics_data DROP CONSTRAINT pk_usage_statistics_data;

ALTER TABLE usage_statistics_data
  ADD CONSTRAINT pk_usage_statistics_data PRIMARY KEY(id);
----------------------------------------------------------------
-- Foreign Key: fk_user_acc_fk_user_f_user_acc

-- ALTER TABLE user_account DROP CONSTRAINT fk_user_acc_fk_user_f_user_acc;

ALTER TABLE user_account
  ADD CONSTRAINT fk_user_acc_fk_user_f_user_acc FOREIGN KEY (owner_id)
      REFERENCES user_account (user_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-------------------------------------------------------------
-- Foreign Key: fk_user_acc_ref_user__user_typ

-- ALTER TABLE user_account DROP CONSTRAINT fk_user_acc_ref_user__user_typ;

ALTER TABLE user_account
  ADD CONSTRAINT fk_user_acc_ref_user__user_typ FOREIGN KEY (user_type_id)
      REFERENCES user_type (user_type_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------------------
-- Foreign Key: fk_user_acc_status_re_status

-- ALTER TABLE user_account DROP CONSTRAINT fk_user_acc_status_re_status;

ALTER TABLE user_account
  ADD CONSTRAINT fk_user_acc_status_re_status FOREIGN KEY (status_id)
      REFERENCES status (status_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
---------------------------------------------------------
-- Index: i_user_account_user_name

-- DROP INDEX i_user_account_user_name;

CREATE INDEX i_user_account_user_name
  ON user_account
  USING btree
  (user_name);
-------------------------------------------------------
-- Foreign Key: fk_versioni_fk_versio_crf_vers

-- ALTER TABLE versioning_map DROP CONSTRAINT fk_versioni_fk_versio_crf_vers;

ALTER TABLE versioning_map
  ADD CONSTRAINT fk_versioni_fk_versio_crf_vers FOREIGN KEY (crf_version_id)
      REFERENCES crf_version (crf_version_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
------------------------------------------------------
-- Foreign Key: fk_versioni_fk_versio_item

-- ALTER TABLE versioning_map DROP CONSTRAINT fk_versioni_fk_versio_item;

ALTER TABLE versioning_map
  ADD CONSTRAINT fk_versioni_fk_versio_item FOREIGN KEY (item_id)
      REFERENCES item (item_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
-----------------------------------------------------
-- Constraint: pk_scd_item_metadata

-- ALTER TABLE scd_item_metadata DROP CONSTRAINT pk_scd_item_metadata;

ALTER TABLE scd_item_metadata
  ADD CONSTRAINT pk_scd_item_metadata PRIMARY KEY(id);
---------------------------------------------------------

