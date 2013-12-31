-- Verify insert_user

BEGIN;

SELECT has_function_privilege('flipr.insert_user(text, text)', 'execute');

ROLLBACK;
