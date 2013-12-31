-- Deploy insert_list
-- requires: lists
-- requires: appschema
-- requires: users

BEGIN;

CREATE OR REPLACE FUNCTION flipr.insert_list(
   nickname    TEXT,
   name        TEXT,
   description TEXT
) RETURNS VOID LANGUAGE sql SECURITY DEFINER AS $$
    INSERT INTO flipr.lists (nickname, name, description)
    VALUES ($1, $2, $3);
$$;

COMMIT;
