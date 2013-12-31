-- Verify delete_list

BEGIN;

SELECT has_function_privilege('flipr.delete_list(text, text)', 'execute');

ROLLBACK;
