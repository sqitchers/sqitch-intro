-- Revert delete_flip

BEGIN;

DROP FUNCTION flipr.delete_flip(BIGINT);

COMMIT;
