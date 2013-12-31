-- Revert change_pass

BEGIN;

DROP FUNCTION flipr.change_pass(TEXT, TEXT, TEXT);

COMMIT;
