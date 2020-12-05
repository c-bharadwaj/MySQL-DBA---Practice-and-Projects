USE thriftshop;

SELECT * FROM inventory;

-- 1. changing the delimiter. The default in SQL is the semi-colon ;
-- So now the new delimiter is // and until we change that back to ; it will be //
DELIMITER //
-- 2. creating the procedure - The create procedure has ; because that is the correct delimiter and this is needed
-- for the SP to run efficiently in the future. If we did not change the delimiter to //, then the ; would tell SQL
-- that the query ends at ; but we need it to be continued through the end to //.
-- Create procedure name (below)
CREATE PROCEDURE sp_selectALLInventory()
-- This is where we would put all the code that would run as a stored procedure (below)
BEGIN
	SELECT * FROM inventory;
    END //
-- changing the delimiter back to default
DELIMITER ;

-- calling the procedure that we have created
CALL sp_selectAllInventory();

-- If we later want to DROP the procedure, we can use this...
DROP PROCEDURE IF EXISTS sp_selectALLInventory;

