-- Verify delete_flip

BEGIN;

SELECT has_function_privilege('flipr.delete_flip(bigint)', 'execute');

ROLLBACK;
