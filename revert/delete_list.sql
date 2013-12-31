-- Revert delete_list

BEGIN;

DROP FUNCTION flipr.delete_list(TEXT, TEXT);

COMMIT;
