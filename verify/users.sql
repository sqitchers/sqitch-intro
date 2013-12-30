-- Verify users

BEGIN;

SELECT nickname, password, timestamp
  FROM flipr.users
 WHERE FALSE;

COMMIT;
