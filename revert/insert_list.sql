-- Revert insert_list

BEGIN;

DROP FUNCTION flipr.insert_list(TEXT, TEXT, TEXT);

COMMIT;
