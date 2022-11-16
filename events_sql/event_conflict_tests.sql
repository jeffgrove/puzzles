-- TODO:
--   1) Write the simplest possible failing test (DONE)
--   2) Implement the simplest stored procedure that will pass the test
--   3) Write a more complicated test that will fail
--   4) Update the stored procedure to pass that test
--   5) Repeat #3 and #4 as necessary until you think you have completed the stored procedure

-- One test that fails
--   pass in exact start and end and expect to get 1 row back
CALL p_get_event_conflicts(1, '2022-12-01 12:00:00', '2022-12-01 13:00:00');
