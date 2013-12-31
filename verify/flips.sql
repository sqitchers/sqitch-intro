-- Verify flips

BEGIN;

SELECT id
     , nickname
     , body
     , timestamp
  FROM flipr.flips
 WHERE FALSE;

ROLLBACK;
