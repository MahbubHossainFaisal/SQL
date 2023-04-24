SELECT Cast('@' + [name] + 'A' as nvarchar(30))
FROM sys.all_columns as Names;

SELECT [name] from sys.all_columns ;
-- Removing first character from name

SELECT SUBSTRING([name],2,len([name])-1) as [name] from sys.all_columns -- 2 number word theke shuru, then len(name-1) eto ghor jabe


-- Removing last character from name
SELECT SUBSTRING([name],1,len([name])-1) as [name] from sys.all_columns -- 1 Number word theke shuru, then len(name-1) eto ghor jabe

-- More info Ascii and char functions including tabs and carriage return https://youtu.be/HBJOc4LeSVY
--Seaching for text in sql server https://youtu.be/QLGi5E8k24s