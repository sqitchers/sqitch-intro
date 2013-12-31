-- Deploy change_pass
-- requires: users
-- requires: appschema
-- requires: pgcrypto

BEGIN;

CREATE OR REPLACE FUNCTION flipr.change_pass(
    nick    TEXT,
    oldpass TEXT,
    newpass TEXT
) RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
    UPDATE flipr.users
       SET password = crypt($3, gen_salt('md5'))
     WHERE nickname = $1
       AND password = crypt($2, password);
    RETURN FOUND;
END;
$$;

COMMIT;
