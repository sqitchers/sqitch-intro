-- Deploy flips
-- requires: appschema
-- requires: users

BEGIN;

SET client_min_messages = 'warning';

CREATE TABLE flipr.flips (
    id        BIGSERIAL   PRIMARY KEY,
    nickname  TEXT        NOT NULL REFERENCES flipr.users(nickname),
    body      TEXT        NOT NULL DEFAULT '' CHECK ( length(body) <= 180 ),
    timestamp TIMESTAMPTZ NOT NULL DEFAULT clock_timestamp()
);

COMMIT;
