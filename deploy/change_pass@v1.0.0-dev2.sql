-- Deploy change_pass
-- requires: users
-- requires: appschema

BEGIN;

CREATE OR REPLACE FUNCTION flipr.change_pass(
    nick    TEXT,
    oldpass TEXT,
    newpass TEXT
) RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
    UPDATE flipr.users
       SET password = md5($3)
     WHERE nickname = $1
       AND password = md5($2);
    RETURN FOUND;
END;
$$;

COMMIT;
