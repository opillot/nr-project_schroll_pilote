CREATE PROCEDURE [SYNCH].[sp_synchroInitGroupUser]
	@maindatabase as varchar(50), @tablename as varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	Declare @accountid as int = dbo.fn_accountid();

    Declare @query as nvarchar(max) = 'Delete ' + @maindatabase + '.[ACC].[Group_User] Where [AccountId] = @accountid;';
	Declare @params as nvarchar(max) = '@accountid int';

	exec sp_executesql @query, @params, @accountid;
	Declare @groupid as int = 10;
	Declare @userid as int;
	Declare @query2 as nvarchar(max) = '';
	Declare @params2 as nvarchar(max) = '';

	Set @query2 = 'Insert Into ' + @maindatabase + '.[ACC].[Group_User] ' +
					' ([AccountId], [GroupId], [UserId]) ' + 
					' Values (@accountid, @groupid, @userid); ';
	Set @params2  = '@accountid int, @groupid int, @userid int';

	Declare record_user10 CURSOR FOR Select usr.[SysRecordId] 
					From [REF].[UserModule] module
					Inner Join [REF].[User] usr on usr.[CompanyCode] = module.[CompanyCode] and  usr.[UserCode] = module.[UserCode]
					Where module.[Module] = 'TRANS'
	OPEN record_user10;
	FETCH NEXT FROM record_user10 INTO @userid  
	WHILE @@FETCH_STATUS = 0  
	BEGIN  
		exec sp_executesql @query2, @params2, @accountid, @groupid, @userid;
		FETCH NEXT FROM record_user10 INTO @userid  
	END   
	CLOSE record_user10;  
	DEALLOCATE record_user10; 

	Set @groupid = 20;
	Declare record_user20 CURSOR FOR Select usr.[SysRecordId] 
					From [REF].[UserModule] module
					Inner Join [REF].[User] usr on usr.[CompanyCode] = module.[CompanyCode] and  usr.[UserCode] = module.[UserCode]
					Where module.[Module] = 'RECEP'
	OPEN record_user20;
	FETCH NEXT FROM record_user20 INTO @userid  
	WHILE @@FETCH_STATUS = 0  
	BEGIN  
		exec sp_executesql @query2, @params2, @accountid, @groupid, @userid;
		FETCH NEXT FROM record_user20 INTO @userid  
	END   
	CLOSE record_user20;  
	DEALLOCATE record_user20; 
END
