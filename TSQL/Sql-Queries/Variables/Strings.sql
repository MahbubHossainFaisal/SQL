--char - ASCII - 1 byte
--varchar - ASCII - 1 byte
--nchar - UNICODE - 2 bytes
--nvarchar - UNICODE - 2 bytes

-- Advantage of using nvarchar or nchar is you can use unicode characters in nchar or nvarchar

Declare @charVar as char(10);

SET @charVar = 'hellothere';

SELECT @charVar as String, len(@charVar) as StringLength, DATALENGTH(@charVar) as StringDataLength;

-- Implicit conversion of char to nchar Put an N in the start
Declare @charVar2 as char(10);

SET @charVar2 = N'hellothere';

SELECT @charVar2 as String, len(@charVar2) as StringLength, DATALENGTH(@charVar2) as StringDataLength;