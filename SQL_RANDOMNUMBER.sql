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
ABS((Checksum(NewID())))  AS checksumofABS,
ABS(Checksum(NewID()) % 1)+1 AS q1 ,
ABS(Checksum(NewID()) % 2)+1  AS q2 ,
ABS(Checksum(NewID()) % 3)+1  AS q3 ,
ABS(Checksum(NewID()) % 4)+1 AS q4 ,
ABS(Checksum(NewID()) % 5)+1  AS q5,
ABS(Checksum(NewID()) % 6)+1  AS q6,
ABS(Checksum(NewID()) % 7)+1  AS q7,
ABS(Checksum(NewID()) % 8)+1 AS q8 ,
ABS(Checksum(NewID()) % 9)+1 as q9 ,
ABS(Checksum(NewID()) % 10)+1 AS q10  ,
ABS(Checksum(NewID()) % 19) +1 AS q11,
ABS(Checksum(NewID()) % 17) +1 AS q11

FROM @teststore t  
--ABS(Checksum(NewID()) % 6) + 1
