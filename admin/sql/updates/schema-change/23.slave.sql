-- Generated by CompileSchemaScripts.pl from:
-- 20160516-mbs-8838.sql
-- 20160516-mbs-8720.sql
-- 20141226-geodesic-index.sql
-- 20160429-mbs-8656.sql
-- 20151223-edit-note-index.sql
-- 20160310-mbs-4501-alternative-tracklists.sql
-- 20160516-mbs-8656.sql
-- 20160516-mbs-8804.sql
-- 20160507-mbs-8727.sql
\set ON_ERROR_STOP 1
BEGIN;
SET search_path = musicbrainz, public;
--------------------------------------------------------------------------------
SELECT '20160516-mbs-8838.sql';

-- Creating columns
ALTER TABLE area_type ADD COLUMN gid uuid;
ALTER TABLE area_alias_type ADD COLUMN gid uuid;
ALTER TABLE artist_alias_type ADD COLUMN gid uuid;
ALTER TABLE artist_type ADD COLUMN gid uuid;
ALTER TABLE editor_collection_type ADD COLUMN gid uuid;
ALTER TABLE event_alias_type ADD COLUMN gid uuid;
ALTER TABLE event_type ADD COLUMN gid uuid;
ALTER TABLE gender ADD COLUMN gid uuid;
ALTER TABLE instrument_alias_type ADD COLUMN gid uuid;
ALTER TABLE instrument_type ADD COLUMN gid uuid;
ALTER TABLE label_alias_type ADD COLUMN gid uuid;
ALTER TABLE label_type ADD COLUMN gid uuid;
ALTER TABLE medium_format ADD COLUMN gid uuid;
ALTER TABLE place_alias_type ADD COLUMN gid uuid;
ALTER TABLE place_type ADD COLUMN gid uuid;
ALTER TABLE recording_alias_type ADD COLUMN gid uuid;
ALTER TABLE release_alias_type ADD COLUMN gid uuid;
ALTER TABLE release_group_alias_type ADD COLUMN gid uuid;
ALTER TABLE release_group_secondary_type ADD COLUMN gid uuid;
ALTER TABLE release_group_primary_type ADD COLUMN gid uuid;
ALTER TABLE release_packaging ADD COLUMN gid uuid;
ALTER TABLE release_status ADD COLUMN gid uuid;
ALTER TABLE series_alias_type ADD COLUMN gid uuid;
ALTER TABLE series_ordering_type ADD COLUMN gid uuid;
ALTER TABLE series_type ADD COLUMN gid uuid;
ALTER TABLE work_alias_type ADD COLUMN gid uuid;
ALTER TABLE work_attribute_type ADD COLUMN gid uuid;
ALTER TABLE work_attribute_type_allowed_value ADD COLUMN gid uuid;
ALTER TABLE work_type ADD COLUMN gid uuid;
ALTER TABLE cover_art_archive.art_type ADD COLUMN gid uuid;

-- Generating GIDs
UPDATE area_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'area_type' || id);
UPDATE area_alias_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'area_alias_type' || id);
UPDATE artist_alias_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'artist_alias_type' || id);
UPDATE artist_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'artist_type' || id);
UPDATE editor_collection_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'editor_collection_type' || id);
UPDATE event_alias_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'event_alias_type' || id);
UPDATE event_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'event_type' || id);
UPDATE gender SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'gender' || id);
UPDATE instrument_alias_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'instrument_alias_type' || id);
UPDATE instrument_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'instrument_type' || id);
UPDATE label_alias_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'label_alias_type' || id);
UPDATE label_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'label_type' || id);
UPDATE medium_format SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'medium_format' || id);
UPDATE place_alias_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'place_alias_type' || id);
UPDATE place_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'place_type' || id);
UPDATE recording_alias_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'recording_alias_type' || id);
UPDATE release_alias_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'release_alias_type' || id);
UPDATE release_group_alias_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'release_group_alias_type' || id);
UPDATE release_group_secondary_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'release_group_secondary_type' || id);
UPDATE release_group_primary_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'release_group_primary_type' || id);
UPDATE release_packaging SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'release_packaging' || id);
UPDATE release_status SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'release_status' || id);
UPDATE series_alias_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'series_alias_type' || id);
UPDATE series_ordering_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'series_ordering_type' || id);
UPDATE series_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'series_type' || id);
UPDATE work_alias_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'work_alias_type' || id);
UPDATE work_attribute_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'work_attribute_type' || id);
UPDATE work_attribute_type_allowed_value SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'work_attribute_type_allowed_value' || id);
UPDATE work_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'work_type' || id);
UPDATE cover_art_archive.art_type SET gid =
    generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'cover_art_archive.art_type' || id);

-- Adding NOT NULL constraint
ALTER TABLE area_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE area_alias_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE artist_alias_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE artist_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE editor_collection_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE event_alias_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE event_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE gender ALTER COLUMN gid SET NOT NULL;
ALTER TABLE instrument_alias_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE instrument_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE label_alias_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE label_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE medium_format ALTER COLUMN gid SET NOT NULL;
ALTER TABLE place_alias_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE place_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE recording_alias_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE release_alias_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE release_group_alias_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE release_group_secondary_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE release_group_primary_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE release_packaging ALTER COLUMN gid SET NOT NULL;
ALTER TABLE release_status ALTER COLUMN gid SET NOT NULL;
ALTER TABLE series_alias_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE series_ordering_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE series_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE work_alias_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE work_attribute_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE work_attribute_type_allowed_value ALTER COLUMN gid SET NOT NULL;
ALTER TABLE work_type ALTER COLUMN gid SET NOT NULL;
ALTER TABLE cover_art_archive.art_type ALTER COLUMN gid SET NOT NULL;

-- Indexes
CREATE UNIQUE INDEX area_type_idx_gid ON area_type (gid);
CREATE UNIQUE INDEX area_alias_type_idx_gid ON area_alias_type (gid);
CREATE UNIQUE INDEX artist_alias_type_idx_gid ON artist_alias_type (gid);
CREATE UNIQUE INDEX artist_type_idx_gid ON artist_type (gid);
CREATE UNIQUE INDEX editor_collection_type_idx_gid ON editor_collection_type (gid);
CREATE UNIQUE INDEX event_alias_type_idx_gid ON event_alias_type (gid);
CREATE UNIQUE INDEX event_type_idx_gid ON event_type (gid);
CREATE UNIQUE INDEX gender_idx_gid ON gender (gid);
CREATE UNIQUE INDEX instrument_alias_type_idx_gid ON instrument_alias_type (gid);
CREATE UNIQUE INDEX instrument_type_idx_gid ON instrument_type (gid);
CREATE UNIQUE INDEX label_alias_type_idx_gid ON label_alias_type (gid);
CREATE UNIQUE INDEX label_type_idx_gid ON label_type (gid);
CREATE UNIQUE INDEX medium_format_idx_gid ON medium_format (gid);
CREATE UNIQUE INDEX place_alias_type_idx_gid ON place_alias_type (gid);
CREATE UNIQUE INDEX place_type_idx_gid ON place_type (gid);
CREATE UNIQUE INDEX recording_alias_type_idx_gid ON recording_alias_type (gid);
CREATE UNIQUE INDEX release_alias_type_idx_gid ON release_alias_type (gid);
CREATE UNIQUE INDEX release_group_alias_type_idx_gid ON release_group_alias_type (gid);
CREATE UNIQUE INDEX release_group_secondary_type_idx_gid ON release_group_secondary_type (gid);
CREATE UNIQUE INDEX release_group_primary_type_idx_gid ON release_group_primary_type (gid);
CREATE UNIQUE INDEX release_packaging_idx_gid ON release_packaging (gid);
CREATE UNIQUE INDEX release_status_idx_gid ON release_status (gid);
CREATE UNIQUE INDEX series_alias_type_idx_gid ON series_alias_type (gid);
CREATE UNIQUE INDEX series_ordering_type_idx_gid ON series_ordering_type (gid);
CREATE UNIQUE INDEX series_type_idx_gid ON series_type (gid);
CREATE UNIQUE INDEX work_alias_type_idx_gid ON work_alias_type (gid);
CREATE UNIQUE INDEX work_attribute_type_idx_gid ON work_attribute_type (gid);
CREATE UNIQUE INDEX work_attribute_type_allowed_value_idx_gid ON work_attribute_type_allowed_value (gid);
CREATE UNIQUE INDEX work_type_idx_gid ON work_type (gid);
CREATE UNIQUE INDEX art_type_idx_gid ON cover_art_archive.art_type (gid);

--------------------------------------------------------------------------------
SELECT '20160516-mbs-8720.sql';

CREATE TABLE edit_note_recipient (
    recipient           INTEGER NOT NULL, -- PK, references editor.id
    edit_note           INTEGER NOT NULL  -- PK, references edit_note.id
);

-- Copying old data
INSERT INTO edit_note_recipient (recipient, edit_note) (
    SELECT edit.editor, edit_note.id
      FROM edit_note
      JOIN edit ON edit_note.edit = edit.id
);

ALTER TABLE edit_note_recipient ADD CONSTRAINT edit_note_recipient_pkey PRIMARY KEY (recipient, edit_note);

ALTER TABLE edit_note_recipient
   ADD CONSTRAINT edit_note_recipient_fk_recipient
   FOREIGN KEY (recipient)
   REFERENCES editor(id);

ALTER TABLE edit_note_recipient
   ADD CONSTRAINT edit_note_recipient_fk_edit_note
   FOREIGN KEY (edit_note)
   REFERENCES edit_note(id);

-- Trigger

CREATE OR REPLACE FUNCTION a_ins_edit_note() RETURNS trigger AS $$
BEGIN
    INSERT INTO edit_note_recipient (recipient, edit_note) (
        SELECT edit.editor, NEW.id
          FROM edit
         WHERE edit.id = NEW.edit
    );
    RETURN NULL;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER a_ins_edit_note AFTER INSERT ON edit_note
    FOR EACH ROW EXECUTE PROCEDURE a_ins_edit_note();

--------------------------------------------------------------------------------
SELECT '20141226-geodesic-index.sql';

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;

CREATE INDEX IF NOT EXISTS place_idx_geo ON place USING gist (ll_to_earth(coordinates[0], coordinates[1])) WHERE coordinates IS NOT NULL;
--------------------------------------------------------------------------------
SELECT '20160429-mbs-8656.sql';

-- MBS-8656: Bring edit table indexes back into sync
DROP INDEX IF EXISTS edit_close_time_idx;
DROP INDEX IF EXISTS edit_date_trunc_idx;
DROP INDEX IF EXISTS edit_date_trunc_idx1;
DROP INDEX IF EXISTS edit_date_trunc_idx2;
DROP INDEX IF EXISTS edit_id_idx;
DROP INDEX IF EXISTS edit_open_time_idx1;
DROP INDEX IF EXISTS edit_status_idx;
ALTER INDEX IF EXISTS edit_open_time_idx RENAME TO edit_idx_open_time;

--------------------------------------------------------------------------------
SELECT '20151223-edit-note-index.sql';

-- Broken index exists on totoro, drop it first.
DROP INDEX IF EXISTS edit_note_idx_post_time_edit;

-- For Data::EditNote::find_by_recipient
CREATE INDEX edit_note_idx_post_time_edit ON edit_note (post_time DESC, edit DESC);

--------------------------------------------------------------------------------
SELECT '20160310-mbs-4501-alternative-tracklists.sql';

CREATE TABLE alternative_release (
    id                      SERIAL,
    gid                     UUID NOT NULL,
    release                 INTEGER NOT NULL,
    name                    VARCHAR,
    artist_credit           INTEGER,
    type                    INTEGER NOT NULL,
    language                INTEGER NOT NULL,
    script                  INTEGER NOT NULL,
    comment                 VARCHAR(255) NOT NULL DEFAULT ''
    CHECK (name != '')
);

CREATE TABLE alternative_release_type (
    id                  SERIAL,
    name                TEXT NOT NULL,
    parent              INTEGER,
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 UUID NOT NULL
);

CREATE TABLE alternative_medium (
    id                      SERIAL,
    medium                  INTEGER NOT NULL,
    alternative_release     INTEGER NOT NULL,
    name                    VARCHAR
    CHECK (name != '')
);

CREATE TABLE alternative_track (
    id                      SERIAL,
    name                    VARCHAR,
    artist_credit           INTEGER,
    ref_count               INTEGER NOT NULL DEFAULT 0
    CHECK (name != '' AND (name IS NOT NULL OR artist_credit IS NOT NULL))
);

CREATE TABLE alternative_medium_track (
    alternative_medium      INTEGER NOT NULL,
    track                   INTEGER NOT NULL,
    alternative_track       INTEGER NOT NULL
);

ALTER TABLE alternative_medium ADD CONSTRAINT alternative_medium_pkey PRIMARY KEY (id);
ALTER TABLE alternative_medium_track ADD CONSTRAINT alternative_medium_track_pkey PRIMARY KEY (alternative_medium, track);
ALTER TABLE alternative_release ADD CONSTRAINT alternative_release_pkey PRIMARY KEY (id);
ALTER TABLE alternative_release_type ADD CONSTRAINT alternative_release_type_pkey PRIMARY KEY (id);
ALTER TABLE alternative_track ADD CONSTRAINT alternative_track_pkey PRIMARY KEY (id);

CREATE INDEX alternative_release_idx_release ON alternative_release (release);
CREATE INDEX alternative_release_idx_name ON alternative_release (name);
CREATE INDEX alternative_release_idx_artist_credit ON alternative_release (artist_credit);
CREATE INDEX alternative_release_idx_language_script ON alternative_release (language, script);
CREATE UNIQUE INDEX alternative_release_idx_gid ON alternative_release (gid);
CREATE INDEX alternative_medium_idx_alternative_release ON alternative_medium (alternative_release);
CREATE INDEX alternative_track_idx_name ON alternative_track (name);
CREATE INDEX alternative_track_idx_artist_credit ON alternative_track (artist_credit);

CREATE OR REPLACE FUNCTION inc_nullable_artist_credit(row_id integer) RETURNS void AS $$
BEGIN
    IF row_id IS NOT NULL THEN
        PERFORM inc_ref_count('artist_credit', row_id, 1);
    END IF;
    RETURN;
END;
$$ LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION dec_nullable_artist_credit(row_id integer) RETURNS void AS $$
BEGIN
    IF row_id IS NOT NULL THEN
        PERFORM dec_ref_count('artist_credit', row_id, 1);
    END IF;
    RETURN;
END;
$$ LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION a_ins_alternative_release_or_track() RETURNS trigger AS $$
BEGIN
    PERFORM inc_nullable_artist_credit(NEW.artist_credit);
    RETURN NULL;
END;
$$ LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION a_upd_alternative_release_or_track() RETURNS trigger AS $$
BEGIN
    IF NEW.artist_credit IS DISTINCT FROM OLD.artist_credit THEN
        PERFORM inc_nullable_artist_credit(NEW.artist_credit);
        PERFORM dec_nullable_artist_credit(OLD.artist_credit);
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION a_del_alternative_release_or_track() RETURNS trigger AS $$
BEGIN
    PERFORM dec_nullable_artist_credit(OLD.artist_credit);
    RETURN NULL;
END;
$$ LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION a_ins_alternative_medium_track() RETURNS trigger AS $$
BEGIN
    PERFORM inc_ref_count('alternative_track', NEW.alternative_track, 1);
    RETURN NULL;
END;
$$ LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION a_upd_alternative_medium_track() RETURNS trigger AS $$
BEGIN
    IF NEW.alternative_track IS DISTINCT FROM OLD.alternative_track THEN
        PERFORM inc_ref_count('alternative_track', NEW.alternative_track, 1);
        PERFORM dec_ref_count('alternative_track', OLD.alternative_track, 1);
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION a_del_alternative_medium_track() RETURNS trigger AS $$
BEGIN
    PERFORM dec_ref_count('alternative_track', OLD.alternative_track, 1);
    RETURN NULL;
END;
$$ LANGUAGE 'plpgsql';

INSERT INTO alternative_release_type (id, name, parent, child_order, description, gid) VALUES
    (1, 'Translation', NULL, 0, '', generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'http://musicbrainz.org/alternative_release_type/translation')),
    (2, 'Official translation', 1, 0, '', generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'http://musicbrainz.org/alternative_release_type/official_translation')),
    (3, 'Exactly as on cover', NULL, 1, '', generate_uuid_v3('6ba7b8119dad11d180b400c04fd430c8', 'http://musicbrainz.org/alternative_release_type/exactly_as_on_cover'));

--------------------------------------------------------------------------------
SELECT '20160516-mbs-8656.sql';

DROP INDEX IF EXISTS artist_gid_redirect_idx_gid;
DROP INDEX IF EXISTS recording_gid_redirect_idx_gid;
DROP INDEX IF EXISTS track_gid_redirect_idx_gid;
DROP INDEX IF EXISTS url_gid_redirect_idx_gid;
DROP INDEX IF EXISTS work_gid_redirect_idx_gid;

DROP INDEX IF EXISTS area_gid_redirect_idx_new_id;
DROP INDEX IF EXISTS artist_gid_redirect_idx_new_id;
DROP INDEX IF EXISTS event_gid_redirect_idx_new_id;
DROP INDEX IF EXISTS instrument_gid_redirect_idx_new_id;
DROP INDEX IF EXISTS label_gid_redirect_idx_new_id;
DROP INDEX IF EXISTS place_gid_redirect_idx_new_id;
DROP INDEX IF EXISTS recording_gid_redirect_idx_new_id;
DROP INDEX IF EXISTS release_gid_redirect_idx_new_id;
DROP INDEX IF EXISTS release_group_gid_redirect_idx_new_id;
DROP INDEX IF EXISTS series_gid_redirect_idx_new_id;
DROP INDEX IF EXISTS track_gid_redirect_idx_new_id;
DROP INDEX IF EXISTS url_gid_redirect_idx_new_id;
DROP INDEX IF EXISTS work_gid_redirect_idx_new_id;

CREATE INDEX area_gid_redirect_idx_new_id ON area_gid_redirect (new_id);
CREATE INDEX artist_gid_redirect_idx_new_id ON artist_gid_redirect (new_id);
CREATE INDEX event_gid_redirect_idx_new_id ON event_gid_redirect (new_id);
CREATE INDEX instrument_gid_redirect_idx_new_id ON instrument_gid_redirect (new_id);
CREATE INDEX label_gid_redirect_idx_new_id ON label_gid_redirect (new_id);
CREATE INDEX place_gid_redirect_idx_new_id ON place_gid_redirect (new_id);
CREATE INDEX recording_gid_redirect_idx_new_id ON recording_gid_redirect (new_id);
CREATE INDEX release_gid_redirect_idx_new_id ON release_gid_redirect (new_id);
CREATE INDEX release_group_gid_redirect_idx_new_id ON release_group_gid_redirect (new_id);
CREATE INDEX series_gid_redirect_idx_new_id ON series_gid_redirect (new_id);
CREATE INDEX track_gid_redirect_idx_new_id ON track_gid_redirect (new_id);
CREATE INDEX url_gid_redirect_idx_new_id ON url_gid_redirect (new_id);
CREATE INDEX work_gid_redirect_idx_new_id ON work_gid_redirect (new_id);

--------------------------------------------------------------------------------
SELECT '20160516-mbs-8804.sql';

DROP INDEX IF EXISTS edit_idx_open_time;
DROP INDEX IF EXISTS edit_idx_close_time;
DROP INDEX IF EXISTS edit_idx_expire_time;
CREATE INDEX edit_idx_open_time ON edit USING BRIN (open_time);
CREATE INDEX edit_idx_close_time ON edit USING BRIN (close_time);
CREATE INDEX edit_idx_expire_time ON edit USING BRIN (expire_time);

DROP INDEX IF EXISTS edit_note_idx_post_time;
CREATE INDEX edit_note_idx_post_time ON edit_note USING BRIN (post_time);

DROP INDEX IF EXISTS vote_idx_vote_time;
CREATE INDEX vote_idx_vote_time ON vote USING BRIN (vote_time);

--------------------------------------------------------------------------------
SELECT '20160507-mbs-8727.sql';


UPDATE vote SET superseded = 't' WHERE id IN (
    1310304, -- edit #752619
    1381783, -- edit #835828
    1389065, -- edit #854892 (vote_time is before id=1389064)
    1429402, -- edit #916266
    1572699, -- edit #1136298 (vote_time is before id=1572698)
    1611602  -- edit #1194378
);

DROP INDEX IF EXISTS vote_idx_editor_edit;
CREATE UNIQUE INDEX vote_idx_editor_edit ON vote (editor, edit) WHERE superseded = FALSE;

COMMIT;
