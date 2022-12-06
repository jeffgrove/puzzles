-- Stored procedure to take input resourceID, startGMT and endGMT and check for event conflicts
DROP PROCEDURE IF EXISTS p_get_event_conflicts_v4_explain;

DELIMITER $$

CREATE PROCEDURE p_get_event_conflicts_v4_explain(
  IN input_resource_id INT(11) UNSIGNED,
  IN input_start_gmt DATETIME,
  IN input_end_gmt DATETIME
    )
BEGIN

  EXPLAIN
  SELECT input_start_gmt AS input_start, input_end_gmt AS input_end, events.*
  FROM events
  WHERE
    resource_id = input_resource_id
    AND input_start_gmt < end_gmt
    AND input_end_gmt > start_gmt
  LIMIT 1;

END$$
DELIMITER ;
;
