-- Verify insert_list

BEGIN;

SELECT has_function_privilege('flipr.insert_list(text, text, text)', 'execute');

ROLLBACK;
