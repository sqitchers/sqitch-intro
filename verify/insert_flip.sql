-- Verify insert_flip

BEGIN;

SELECT has_function_privilege('flipr.insert_flip(text, text)', 'execute');

ROLLBACK;
