-- Stored procedure to take input resourceID, startGMT and endGMT and check for event conflicts
DROP PROCEDURE IF EXISTS p_get_event_conflicts_v0;

DELIMITER $$

CREATE PROCEDURE p_get_event_conflicts_v0(
  IN input_resource_id INT(11) UNSIGNED,
  IN input_start_gmt DATETIME,
  IN input_end_gmt DATETIME
    )
BEGIN

  SELECT *
  FROM events
  WHERE 0 = 1
  LIMIT 1;

END$$
DELIMITER ;
;
