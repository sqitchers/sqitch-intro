-- Revert insert_flip

BEGIN;

DROP FUNCTION flipr.insert_flip(TEXT, TEXT);

COMMIT;
