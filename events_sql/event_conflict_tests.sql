-- TODO:
--   1) Write the simplest possible failing test
--   2) Implement the simplest stored procedure that will pass the test
--   3) Write a more complicated test that will fail
--   4) Update the stored procedure to pass that test
--   5) Repeat #3 and #4 as necessary until you think you have completed the stored procedure


-- 1) Candidate (X) overlaps start of Event (A)
--    start_overlap_expects_one_conflict
CALL p_get_event_conflicts_v0(1, '2022-12-01 15:30', '2022-12-01 16:30');

CALL p_get_event_conflicts_v1(1, '2022-12-01 15:30', '2022-12-01 16:30');


-- 2) Candidate (X) overlaps the end of Event (A)
--    end_overlap_expects_one_conflict
CALL p_get_event_conflicts_v1(1, '2022-12-01 16:30', '2022-12-01 17:30');

CALL p_get_event_conflicts_v2(1, '2022-12-01 16:30', '2022-12-01 17:30');


-- 3) Candidate (X) encompasses Event (A)
--
CALL p_get_event_conflicts_v2(1, '2022-12-01 15:30', '2022-12-01 17:30');

CALL p_get_event_conflicts_v3(1, '2022-12-01 15:30', '2022-12-01 17:30');


-- 4) Candidate (X) encompassed by Event (A)
CALL p_get_event_conflicts_v3(1, '2022-12-01 15:30', '2022-12-01 17:30');


-- 5) Candidate (X) before Event (A)
CALL p_get_event_conflicts_v3(1, '2022-12-01 14:15', '2022-12-01 14:45');


-- 6) Candidate (X) after Event (A)
CALL p_get_event_conflicts_v3(1, '2022-12-01 17:30', '2022-12-01 18:30');


-- 7) End of Candidate (X) equal to start of Event (A)
CALL p_get_event_conflicts_v3(1, '2022-12-01 15:00', '2022-12-01 16:00');


-- 8) Start of Candidate (X) equal to end of Event (A)
CALL p_get_event_conflicts_v3(1, '2022-12-01 17:00', '2022-12-01 18:00');


-- 9) Candidate (X) exactly matches Event (A)
CALL p_get_event_conflicts_v3(1, '2022-12-01 16:00', '2022-12-01 17:00');
