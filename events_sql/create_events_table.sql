-- Drop the table if it exists and start over
DROP TABLE IF EXISTS events;

-- Create the table
CREATE TABLE events (
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  resource_id INT(11) UNSIGNED NOT NULL,
  start_gmt DATETIME NOT NULL,
  end_gmt DATETIME NOT NULL,
  PRIMARY KEY (id),
  KEY idx_resource_id (resource_id),
  KEY idx_start (start_gmt),
  KEY idx_end (end_gmt)
);

-- Add some data for testing
INSERT INTO events (resource_id, start_gmt, end_gmt) VALUES
  (1, '2022-12-01 12:00:00', '2022-12-01 13:00:00'),
  (1, '2022-12-01 13:00:00', '2022-12-01 14:00:00'),
  (1, '2022-12-01 16:00:00', '2022-12-01 17:00:00');

-- Verify that the data is in there
SELECT *
FROM events;


