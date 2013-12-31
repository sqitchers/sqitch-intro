-- Revert pgcrypto

BEGIN;

DROP EXTENSION pgcrypto;

COMMIT;
