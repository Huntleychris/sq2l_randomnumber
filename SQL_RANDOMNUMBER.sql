DECLARE @teststore TABLE (rownumber int)
DECLARE @counter1 int = 1

WHILE @counter1 < 101
begin
INSERT INTO @teststore
(
    rownumber
)
VALUES
(
    @counter1
)   

SET @counter1 = @counter1 + 1

END

SELECT 
rownumber, 
abs(rownumber) AS absolutevalue, -- just changes a negative number into a positive doesn't affect positive or zero numbers
checksum(rownumber) AS checksumofvalue,
NewID() AS newid_check,
(Checksum(NewID())) AS checksumofnewID,
ABS((Checksum(NewID())))  AS checksumofABS


 FROM @teststore t  
--ABS(Checksum(NewID()) % 6) + 1
