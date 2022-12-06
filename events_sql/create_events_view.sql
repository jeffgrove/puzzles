DROP TABLE IF EXISTS events;
DROP VIEW IF EXISTS events;

CREATE VIEW events AS
SELECT *
FROM events_small
;

-- Alternative view
/*
  CREATE VIEW events AS
  SELECT *
  FROM events_small
;
*/
