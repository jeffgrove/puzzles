-- Stored procedure to take input resourceID, startGMT and endGMT and check for event conflicts
DROP PROCEDURE IF EXISTS p_get_event_conflicts_v3_explain;

DELIMITER $$

CREATE PROCEDURE p_get_event_conflicts_v3_explain(
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
    AND
      (
        (start_gmt < input_end_gmt AND end_gmt > input_end_gmt)
        OR (start_gmt < input_start_gmt AND end_gmt > input_start_gmt)
        OR (start_gmt > input_start_gmt AND end_gmt < input_end_gmt)
      )
  LIMIT 1;

END$$
DELIMITER ;
;
