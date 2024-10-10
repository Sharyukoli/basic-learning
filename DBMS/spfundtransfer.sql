-- creating a store procedure spfundtransfer for baning:
 CREATE DEFINER=`root`@`localhost` PROCEDURE `spfundtransfer`(
	IN sp_fromaccountid INT,
    IN sp_toaccountid INT,
    IN sp_amount DECIMAL(10,3)
    )
BEGIN
	START TRANSACTION;
    -- SELECT amount INTO accountid FROM accounts WHERE accountid = sp_accountid;
    UPDATE accounts SET balance = balance + sp_amount
    WHERE accountid = sp_toaccountid;
    INSERT into operations(accountid, date_time, amount, oper_type)values
    (sp_toaccountid, NOW(), sp_amount, 'D');
    UPDATE accounts SET balance = balance - sp_amount
    WHERE accountid = sp_fromaccountid;
    INSERT into operations(accountid, date_time, amount, oper_type)values
    (sp_fromaccountid, NOW(), sp_amount, 'W'); 
    COMMIT;
END 