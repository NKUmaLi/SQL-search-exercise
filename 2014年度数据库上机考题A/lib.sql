/*
 Navicat Premium Data Transfer

 Source Server         : SQL-Server
 Source Server Type    : SQL Server
 Source Server Version : 14001000
 Source Catalog        : lib-exam
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14001000
 File Encoding         : 65001

 Date: 11/06/2018 23:09:38
*/


-- ----------------------------
-- Table structure for book
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[book]') AND type IN ('U'))
	DROP TABLE [dbo].[book]
GO

CREATE TABLE [dbo].[book] (
  [bookid] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [bookname] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [author] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [price] float(53)  NULL,
  [catid] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[book] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO [dbo].[book]  VALUES (N'b001      ', N'货币银行学', N'李双伟', N'55', N'c2        ')
GO

INSERT INTO [dbo].[book]  VALUES (N'b003      ', N'数据库系统全书', N'加西亚-莫里纳', N'65', N'c1        ')
GO

INSERT INTO [dbo].[book]  VALUES (N'b007      ', N'微观经济学', N'喻德坚', N'48', N'c2        ')
GO

INSERT INTO [dbo].[book]  VALUES (N'b009      ', N'算法导论', N'科曼', N'85', N'c1        ')
GO

INSERT INTO [dbo].[book]  VALUES (N'b010      ', N'数据挖掘概念与技术', N'韩家炜', N'55', N'c1        ')
GO

INSERT INTO [dbo].[book]  VALUES (N'b012      ', N'DB2数据库性能调整和优化', N'牛新庄', N'68', N'c1        ')
GO

INSERT INTO [dbo].[book]  VALUES (N'b014      ', N'数学分析原理', N'卢丁', N'28', N'c3        ')
GO

INSERT INTO [dbo].[book]  VALUES (N'b016      ', N'现代量子力学', N'J.J.Sakurai', N'36', N'c3        ')
GO

INSERT INTO [dbo].[book]  VALUES (N'b021      ', N'现代操作系统', N'Tanenbaum', N'55', N'c1        ')
GO

INSERT INTO [dbo].[book]  VALUES (N'b023      ', N'编译原理', N'alfred v．aho', N'55', N'c1        ')
GO

INSERT INTO [dbo].[book]  VALUES (N'b025      ', N'数据库系统概念', N'西尔伯沙茨', N'69.5', N'c1        ')
GO

INSERT INTO [dbo].[book]  VALUES (N'b032      ', N'马克思主义基本原理概论', N'邓晓辉', N'17.8', N'c4        ')
GO


-- ----------------------------
-- Table structure for borrow
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[borrow]') AND type IN ('U'))
	DROP TABLE [dbo].[borrow]
GO

CREATE TABLE [dbo].[borrow] (
  [stuid] char(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [bookid] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [borrowdate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[borrow] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO [dbo].[borrow]  VALUES (N'200810111           ', N'b003      ', N'2010-10-08 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'200810111           ', N'b023      ', N'2010-10-08 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'200810111           ', N'b014      ', N'2010-10-10 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'200810111           ', N'b021      ', N'2010-10-10 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'200910121           ', N'b003      ', N'2010-10-09 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'200910121           ', N'b014      ', N'2010-10-09 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'201010121           ', N'b014      ', N'2010-10-13 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'201021109           ', N'b001      ', N'2010-10-15 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'201021109           ', N'b012      ', N'2010-10-15 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'1200910211          ', N'b009      ', N'2010-10-15 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'1200910211          ', N'b010      ', N'2010-10-18 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'1200910211          ', N'b021      ', N'2010-10-19 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'1200910211          ', N'b023      ', N'2010-10-10 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'1201022135          ', N'b016      ', N'2010-10-25 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'201021109           ', N'b003      ', N'2010-10-08 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'201010121           ', N'b003      ', N'2010-10-13 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'1201022135          ', N'b025      ', N'2010-10-13 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'200810111           ', N'b025      ', N'2010-10-09 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'200810111           ', N'b007      ', N'2010-10-11 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'200810111           ', N'b032      ', N'2010-10-13 00:00:00.000')
GO

INSERT INTO [dbo].[borrow]  VALUES (N'1201022135          ', N'b003      ', N'2010-10-10 00:00:00.000')
GO


-- ----------------------------
-- Table structure for category
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[category]') AND type IN ('U'))
	DROP TABLE [dbo].[category]
GO

CREATE TABLE [dbo].[category] (
  [catid] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [catname] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [num] int  NOT NULL
)
GO

ALTER TABLE [dbo].[category] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO [dbo].[category]  VALUES (N'c1        ', N'计算机技术', N'1300')
GO

INSERT INTO [dbo].[category]  VALUES (N'c2        ', N'经济', N'1100')
GO

INSERT INTO [dbo].[category]  VALUES (N'c3        ', N'数理科学', N'2300')
GO

INSERT INTO [dbo].[category]  VALUES (N'c4        ', N'政治', N'500')
GO


-- ----------------------------
-- Table structure for dtproperties
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dtproperties]') AND type IN ('U'))
	DROP TABLE [dbo].[dtproperties]
GO

CREATE TABLE [dbo].[dtproperties] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [objectid] int  NULL,
  [property] varchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [value] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [uvalue] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [lvalue] image  NULL,
  [version] int DEFAULT (0) NOT NULL
)
GO

ALTER TABLE [dbo].[dtproperties] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for major
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[major]') AND type IN ('U'))
	DROP TABLE [dbo].[major]
GO

CREATE TABLE [dbo].[major] (
  [majorid] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [majorname] nchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [department] nchar(30) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[major] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO [dbo].[major]  VALUES (N'm1        ', N'计算机科学与技术                      ', N'计算机与控制工程学院                    ')
GO

INSERT INTO [dbo].[major]  VALUES (N'm2        ', N'信息安全                          ', N'计算机与控制工程学院                    ')
GO

INSERT INTO [dbo].[major]  VALUES (N'm3        ', N'金融工程                          ', N'金融学院                          ')
GO

INSERT INTO [dbo].[major]  VALUES (N'm4        ', N'政治学                           ', N'周恩来政府管理学院                     ')
GO


-- ----------------------------
-- Table structure for student
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[student]') AND type IN ('U'))
	DROP TABLE [dbo].[student]
GO

CREATE TABLE [dbo].[student] (
  [stuid] char(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [stuname] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [degree] varchar(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [majorid] char(10) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[student] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO [dbo].[student]  VALUES (N'1200910211          ', N'周昕', N'研究生', N'm1        ')
GO

INSERT INTO [dbo].[student]  VALUES (N'1201022020          ', N'张三', N'研究生', N'm2        ')
GO

INSERT INTO [dbo].[student]  VALUES (N'1201022135          ', N'吴城', N'研究生', N'm4        ')
GO

INSERT INTO [dbo].[student]  VALUES (N'200810111           ', N'王玲', N'本科生', N'm2        ')
GO

INSERT INTO [dbo].[student]  VALUES (N'200910121           ', N'王菲', N'本科生', N'm3        ')
GO

INSERT INTO [dbo].[student]  VALUES (N'201010121           ', N'李飞', N'本科生', N'm3        ')
GO

INSERT INTO [dbo].[student]  VALUES (N'201021109           ', N'赵四', N'本科生', N'm1        ')
GO


-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type IN ('U'))
	DROP TABLE [dbo].[sysdiagrams]
GO

CREATE TABLE [dbo].[sysdiagrams] (
  [name] sysname  NOT NULL,
  [principal_id] int  NOT NULL,
  [diagram_id] int  IDENTITY(1,1) NOT NULL,
  [version] int  NULL,
  [definition] varbinary(max)  NULL
)
GO

ALTER TABLE [dbo].[sysdiagrams] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Procedure structure for dt_generateansiname
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_generateansiname]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_generateansiname]
GO

CREATE PROCEDURE [dbo].[dt_generateansiname](@name varchar(255) output) 
as 
	declare @prologue varchar(20) 
	declare @indexstring varchar(20) 
	declare @index integer 
 
	set @prologue = 'MSDT-A-' 
	set @index = 1 
 
	while 1 = 1 
	begin 
		set @indexstring = cast(@index as varchar(20)) 
		set @name = @prologue + @indexstring 
		if not exists (select value from dtproperties where value = @name) 
			break 
		 
		set @index = @index + 1 
 
		if (@index = 10000) 
			goto TooMany 
	end 
 
Leave: 
 
	return 
 
TooMany: 
 
	set @name = 'DIAGRAM' 
	goto Leave
GO


-- ----------------------------
-- Procedure structure for dt_adduserobject
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_adduserobject]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_adduserobject]
GO

CREATE PROCEDURE [dbo].[dt_adduserobject]
as
	set nocount on
	/*
	** Create the user object if it does not exist already
	*/
	begin transaction
		insert dbo.dtproperties (property) VALUES ('DtgSchemaOBJECT')
		update dbo.dtproperties set objectid=@@identity 
			where id=@@identity and property='DtgSchemaOBJECT'
	commit
	return @@identity
GO


-- ----------------------------
-- Procedure structure for dt_setpropertybyid
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_setpropertybyid]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_setpropertybyid]
GO

CREATE PROCEDURE [dbo].[dt_setpropertybyid]
	@id int,
	@property varchar(64),
	@value varchar(255),
	@lvalue image
as
	set nocount on
	declare @uvalue nvarchar(255) 
	set @uvalue = convert(nvarchar(255), @value) 
	if exists (select * from dbo.dtproperties 
			where objectid=@id and property=@property)
	begin
		--
		-- bump the version count for this row as we update it
		--
		update dbo.dtproperties set value=@value, uvalue=@uvalue, lvalue=@lvalue, version=version+1
			where objectid=@id and property=@property
	end
	else
	begin
		--
		-- version count is auto-set to 0 on initial insert
		--
		insert dbo.dtproperties (property, objectid, value, uvalue, lvalue)
			values (@property, @id, @value, @uvalue, @lvalue)
	end
GO


-- ----------------------------
-- Procedure structure for dt_getobjwithprop
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_getobjwithprop]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_getobjwithprop]
GO

CREATE PROCEDURE [dbo].[dt_getobjwithprop]
	@property varchar(30),
	@value varchar(255)
as
	set nocount on

	if (@property is null) or (@property = '')
	begin
		raiserror('Must specify a property name.',-1,-1)
		return (1)
	end

	if (@value is null)
		select objectid id from dbo.dtproperties
			where property=@property

	else
		select objectid id from dbo.dtproperties
			where property=@property and value=@value
GO


-- ----------------------------
-- Procedure structure for dt_getpropertiesbyid
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_getpropertiesbyid]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_getpropertiesbyid]
GO

CREATE PROCEDURE [dbo].[dt_getpropertiesbyid]
	@id int,
	@property varchar(64)
as
	set nocount on

	if (@property is null) or (@property = '')
		select property, version, value, lvalue
			from dbo.dtproperties
			where  @id=objectid
	else
		select property, version, value, lvalue
			from dbo.dtproperties
			where  @id=objectid and @property=property
GO


-- ----------------------------
-- Procedure structure for dt_setpropertybyid_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_setpropertybyid_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_setpropertybyid_u]
GO

CREATE PROCEDURE [dbo].[dt_setpropertybyid_u]
	@id int,
	@property varchar(64),
	@uvalue nvarchar(255),
	@lvalue image
as
	set nocount on
	-- 
	-- If we are writing the name property, find the ansi equivalent. 
	-- If there is no lossless translation, generate an ansi name. 
	-- 
	declare @avalue varchar(255) 
	set @avalue = null 
	if (@uvalue is not null) 
	begin 
		if (convert(nvarchar(255), convert(varchar(255), @uvalue)) = @uvalue) 
		begin 
			set @avalue = convert(varchar(255), @uvalue) 
		end 
		else 
		begin 
			if 'DtgSchemaNAME' = @property 
			begin 
				exec dbo.dt_generateansiname @avalue output 
			end 
		end 
	end 
	if exists (select * from dbo.dtproperties 
			where objectid=@id and property=@property)
	begin
		--
		-- bump the version count for this row as we update it
		--
		update dbo.dtproperties set value=@avalue, uvalue=@uvalue, lvalue=@lvalue, version=version+1
			where objectid=@id and property=@property
	end
	else
	begin
		--
		-- version count is auto-set to 0 on initial insert
		--
		insert dbo.dtproperties (property, objectid, value, uvalue, lvalue)
			values (@property, @id, @avalue, @uvalue, @lvalue)
	end
GO


-- ----------------------------
-- Procedure structure for dt_getobjwithprop_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_getobjwithprop_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_getobjwithprop_u]
GO

CREATE PROCEDURE [dbo].[dt_getobjwithprop_u]
	@property varchar(30),
	@uvalue nvarchar(255)
as
	set nocount on

	if (@property is null) or (@property = '')
	begin
		raiserror('Must specify a property name.',-1,-1)
		return (1)
	end

	if (@uvalue is null)
		select objectid id from dbo.dtproperties
			where property=@property

	else
		select objectid id from dbo.dtproperties
			where property=@property and uvalue=@uvalue
GO


-- ----------------------------
-- Procedure structure for dt_getpropertiesbyid_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_getpropertiesbyid_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_getpropertiesbyid_u]
GO

CREATE PROCEDURE [dbo].[dt_getpropertiesbyid_u]
	@id int,
	@property varchar(64)
as
	set nocount on

	if (@property is null) or (@property = '')
		select property, version, uvalue, lvalue
			from dbo.dtproperties
			where  @id=objectid
	else
		select property, version, uvalue, lvalue
			from dbo.dtproperties
			where  @id=objectid and @property=property
GO


-- ----------------------------
-- Procedure structure for dt_dropuserobjectbyid
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_dropuserobjectbyid]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_dropuserobjectbyid]
GO

CREATE PROCEDURE [dbo].[dt_dropuserobjectbyid]
	@id int
as
	set nocount on
	delete from dbo.dtproperties where objectid=@id
GO


-- ----------------------------
-- Procedure structure for dt_droppropertiesbyid
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_droppropertiesbyid]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_droppropertiesbyid]
GO

CREATE PROCEDURE [dbo].[dt_droppropertiesbyid]
	@id int,
	@property varchar(64)
as
	set nocount on

	if (@property is null) or (@property = '')
		delete from dbo.dtproperties where objectid=@id
	else
		delete from dbo.dtproperties 
			where objectid=@id and property=@property
GO


-- ----------------------------
-- Procedure structure for dt_verstamp006
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_verstamp006]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_verstamp006]
GO

CREATE PROCEDURE [dbo].[dt_verstamp006]
as
	select 7000
GO


-- ----------------------------
-- Procedure structure for dt_getpropertiesbyid_vcs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_getpropertiesbyid_vcs]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_getpropertiesbyid_vcs]
GO

CREATE PROCEDURE [dbo].[dt_getpropertiesbyid_vcs]
    @id       int,
    @property varchar(64),
    @value    varchar(255) = NULL OUT

as

    set nocount on

    select @value = (
        select value
                from dbo.dtproperties
                where @id=objectid and @property=property
                )
GO


-- ----------------------------
-- Procedure structure for dt_displayoaerror
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_displayoaerror]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_displayoaerror]
GO

CREATE PROCEDURE [dbo].[dt_displayoaerror]
    @iObject int,
    @iresult int
as

set nocount on

declare @vchOutput      varchar(255)
declare @hr             int
declare @vchSource      varchar(255)
declare @vchDescription varchar(255)

    exec @hr = sp_OAGetErrorInfo @iObject, @vchSource OUT, @vchDescription OUT

    select @vchOutput = @vchSource + ': ' + @vchDescription
    raiserror (@vchOutput,16,-1)

    return
GO


-- ----------------------------
-- Procedure structure for dt_adduserobject_vcs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_adduserobject_vcs]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_adduserobject_vcs]
GO

CREATE PROCEDURE [dbo].[dt_adduserobject_vcs]
    @vchProperty varchar(64)

as

set nocount on

declare @iReturn int
    /*
    ** Create the user object if it does not exist already
    */
    begin transaction
        select @iReturn = objectid from dbo.dtproperties where property = @vchProperty
        if @iReturn IS NULL
        begin
            insert dbo.dtproperties (property) VALUES (@vchProperty)
            update dbo.dtproperties set objectid=@@identity
                    where id=@@identity and property=@vchProperty
            select @iReturn = @@identity
        end
    commit
    return @iReturn
GO


-- ----------------------------
-- Procedure structure for dt_addtosourcecontrol
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_addtosourcecontrol]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_addtosourcecontrol]
GO

CREATE PROCEDURE [dbo].[dt_addtosourcecontrol]
    @vchSourceSafeINI varchar(255) = '',
    @vchProjectName   varchar(255) ='',
    @vchComment       varchar(255) ='',
    @vchLoginName     varchar(255) ='',
    @vchPassword      varchar(255) =''

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId = 0

declare @iStreamObjectId int
select @iStreamObjectId = 0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

declare @vchDatabaseName varchar(255)
select @vchDatabaseName = db_name()

declare @iReturnValue int
select @iReturnValue = 0

declare @iPropertyObjectId int
declare @vchParentId varchar(255)

declare @iObjectCount int
select @iObjectCount = 0

    exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
    if @iReturn <> 0 GOTO E_OAError


    /* Create Project in SS */
    exec @iReturn = sp_OAMethod @iObjectId,
                                'AddProjectToSourceSafe',
                                NULL,
                                @vchSourceSafeINI,
                                @vchProjectName output,
                                @@SERVERNAME,
                                @vchDatabaseName,
                                @vchLoginName,
                                @vchPassword,
                                @vchComment


    if @iReturn <> 0 GOTO E_OAError

    exec @iReturn = sp_OAGetProperty @iObjectId, 'GetStreamObject', @iStreamObjectId OUT

    if @iReturn <> 0 GOTO E_OAError

    /* Set Database Properties */

    begin tran SetProperties

    /* add high level object */

    exec @iPropertyObjectId = dbo.dt_adduserobject_vcs 'VCSProjectID'

    select @vchParentId = CONVERT(varchar(255),@iPropertyObjectId)

    exec dbo.dt_setpropertybyid @iPropertyObjectId, 'VCSProjectID', @vchParentId , NULL
    exec dbo.dt_setpropertybyid @iPropertyObjectId, 'VCSProject' , @vchProjectName , NULL
    exec dbo.dt_setpropertybyid @iPropertyObjectId, 'VCSSourceSafeINI' , @vchSourceSafeINI , NULL
    exec dbo.dt_setpropertybyid @iPropertyObjectId, 'VCSSQLServer', @@SERVERNAME, NULL
    exec dbo.dt_setpropertybyid @iPropertyObjectId, 'VCSSQLDatabase', @vchDatabaseName, NULL

    if @@error <> 0 GOTO E_General_Error

    commit tran SetProperties

    declare cursorProcNames cursor for
        select convert(varchar(255), name) from sysobjects where type = 'P' and name not like 'dt_%'
    open cursorProcNames

    while 1 = 1
    begin
        declare @vchProcName varchar(255)
        fetch next from cursorProcNames into @vchProcName
        if @@fetch_status <> 0
            break

        select colid, text into #ProcLines
        from syscomments
        where id = object_id(@vchProcName)
        order by colid

        declare @iCurProcLine int
        declare @iProcLines int
        select @iCurProcLine = 1
        select @iProcLines = (select count(*) from #ProcLines)
        while @iCurProcLine <= @iProcLines
        begin
            declare @pos int
            select @pos = 1
            declare @iCurLineSize int
            select @iCurLineSize = len((select text from #ProcLines where colid = @iCurProcLine))
            while @pos <= @iCurLineSize
            begin
                declare @vchProcLinePiece varchar(255)
                select @vchProcLinePiece = convert(varchar(255),
                    substring((select text from #ProcLines where colid = @iCurProcLine),
                              @pos, 255 ))
                exec @iReturn = sp_OAMethod @iStreamObjectId, 'AddStream', @iReturnValue OUT, @vchProcLinePiece
                if @iReturn <> 0 GOTO E_OAError
                select @pos = @pos + 255
            end
            select @iCurProcLine = @iCurProcLine + 1
        end
        drop table #ProcLines

        exec @iReturn = sp_OAMethod @iObjectId,
                                    'CheckIn_StoredProcedure',
                                    NULL,
                                    @sProjectName = @vchProjectName,
                                    @sSourceSafeINI = @vchSourceSafeINI,
                                    @sServerName = @@SERVERNAME,
                                    @sDatabaseName = @vchDatabaseName,
                                    @sObjectName = @vchProcName,
                                    @sComment = @vchComment,
                                    @sLoginName = @vchLoginName,
                                    @sPassword = @vchPassword,
                                    @iVCSFlags = 0,
                                    @iActionFlag = 0,
                                    @sStream = ''

        if @iReturn = 0 select @iObjectCount = @iObjectCount + 1

    end

CleanUp:
	close cursorProcNames
	deallocate cursorProcNames
    select @vchProjectName
    select @iObjectCount
    return

E_General_Error:
    /* this is an all or nothing.  No specific error messages */
    goto CleanUp

E_OAError:
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    goto CleanUp
GO


-- ----------------------------
-- Procedure structure for dt_checkinobject
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_checkinobject]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_checkinobject]
GO

CREATE PROCEDURE [dbo].[dt_checkinobject]
    @chObjectType  char(4),
    @vchObjectName varchar(255),
    @vchComment    varchar(255)='',
    @vchLoginName  varchar(255),
    @vchPassword   varchar(255)='',
    @iVCSFlags     int = 0,
    @iActionFlag   int = 0,   /* 0 => AddFile, 1 => CheckIn */
    @txStream1     Text = '', /* There is a bug that if items are NULL they do not pass to OLE servers */
    @txStream2     Text = '',
    @txStream3     Text = ''


as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId = 0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'


declare @iPropertyObjectId int
select @iPropertyObjectId  = 0

    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   varchar(255)
    declare @vchSourceSafeINI varchar(255)
    declare @vchServerName    varchar(255)
    declare @vchDatabaseName  varchar(255)
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if @chObjectType = 'PROC'
    begin
        if @iActionFlag = 1
        begin
            /* Procedure Can have up to three streams
            Drop Stream, Create Stream, GRANT stream */

            begin tran compile_all

            /* try to compile the streams */
            exec (@txStream1)
            if @@error <> 0 GOTO E_Compile_Fail

            exec (@txStream2)
            if @@error <> 0 GOTO E_Compile_Fail

            exec (@txStream3)
            if @@error <> 0 GOTO E_Compile_Fail
        end

        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
        if @iReturn <> 0 GOTO E_OAError

        if @iActionFlag = 1
        begin
            exec @iReturn = sp_OAMethod @iObjectId,
                                        'CheckIn_StoredProcedure',
                                        NULL,
                                        @sProjectName = @vchProjectName,
                                        @sSourceSafeINI = @vchSourceSafeINI,
                                        @sServerName = @vchServerName,
                                        @sDatabaseName = @vchDatabaseName,
                                        @sObjectName = @vchObjectName,
                                        @sComment = @vchComment,
                                        @sLoginName = @vchLoginName,
                                        @sPassword = @vchPassword,
                                        @iVCSFlags = @iVCSFlags,
                                        @iActionFlag = @iActionFlag,
                                        @sStream = @txStream2
        end
        else
        begin
            declare @iStreamObjectId int
            declare @iReturnValue int

            exec @iReturn = sp_OAGetProperty @iObjectId, 'GetStreamObject', @iStreamObjectId OUT
            if @iReturn <> 0 GOTO E_OAError

            select colid, text into #ProcLines
            from syscomments
            where id = object_id(@vchObjectName)
            order by colid

            declare @iCurProcLine int
            declare @iProcLines int
            select @iCurProcLine = 1
            select @iProcLines = (select count(*) from #ProcLines)
            while @iCurProcLine <= @iProcLines
            begin
                declare @pos int
                select @pos = 1
                declare @iCurLineSize int
                select @iCurLineSize = len((select text from #ProcLines where colid = @iCurProcLine))
                while @pos <= @iCurLineSize
                begin
                    declare @vchProcLinePiece varchar(255)
                    select @vchProcLinePiece = convert(varchar(255),
                        substring((select text from #ProcLines where colid = @iCurProcLine),
                                  @pos, 255 ))
                    exec @iReturn = sp_OAMethod @iStreamObjectId, 'AddStream', @iReturnValue OUT, @vchProcLinePiece
                    if @iReturn <> 0 GOTO E_OAError
                    select @pos = @pos + 255
                end
                select @iCurProcLine = @iCurProcLine + 1
            end
            drop table #ProcLines

            exec @iReturn = sp_OAMethod @iObjectId,
                                        'CheckIn_StoredProcedure',
                                        NULL,
                                        @sProjectName = @vchProjectName,
                                        @sSourceSafeINI = @vchSourceSafeINI,
                                        @sServerName = @vchServerName,
                                        @sDatabaseName = @vchDatabaseName,
                                        @sObjectName = @vchObjectName,
                                        @sComment = @vchComment,
                                        @sLoginName = @vchLoginName,
                                        @sPassword = @vchPassword,
                                        @iVCSFlags = @iVCSFlags,
                                        @iActionFlag = @iActionFlag,
                                        @sStream = ''
        end

        if @iReturn <> 0 GOTO E_OAError

        if @iActionFlag = 1
        begin
            commit tran compile_all
            if @@error <> 0 GOTO E_Compile_Fail
        end

    end

CleanUp:
    return

E_Compile_Fail:
    declare @lerror int
    select @lerror = @@error
    rollback tran compile_all
    RAISERROR (@lerror,16,-1)
    goto CleanUp

E_OAError:
    if @iActionFlag = 1 rollback tran compile_all
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    goto CleanUp
GO


-- ----------------------------
-- Procedure structure for dt_checkoutobject
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_checkoutobject]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_checkoutobject]
GO

CREATE PROCEDURE [dbo].[dt_checkoutobject]
    @chObjectType  char(4),
    @vchObjectName varchar(255),
    @vchComment    varchar(255),
    @vchLoginName  varchar(255),
    @vchPassword   varchar(255),
    @iVCSFlags     int = 0,
    @iActionFlag   int = 0/* 0 => Checkout, 1 => GetLatest, 2 => UndoCheckOut */

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId =0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

declare @iReturnValue int
select @iReturnValue = 0

declare @vchTempText varchar(255)

/* this is for our strings */
declare @iStreamObjectId int
select @iStreamObjectId = 0

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   varchar(255)
    declare @vchSourceSafeINI varchar(255)
    declare @vchServerName    varchar(255)
    declare @vchDatabaseName  varchar(255)
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if @chObjectType = 'PROC'
    begin
        /* Procedure Can have up to three streams
           Drop Stream, Create Stream, GRANT stream */

        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = sp_OAMethod @iObjectId,
                                    'CheckOut_StoredProcedure',
                                    NULL,
                                    @sProjectName = @vchProjectName,
                                    @sSourceSafeINI = @vchSourceSafeINI,
                                    @sObjectName = @vchObjectName,
                                    @sServerName = @vchServerName,
                                    @sDatabaseName = @vchDatabaseName,
                                    @sComment = @vchComment,
                                    @sLoginName = @vchLoginName,
                                    @sPassword = @vchPassword,
                                    @iVCSFlags = @iVCSFlags,
                                    @iActionFlag = @iActionFlag

        if @iReturn <> 0 GOTO E_OAError


        exec @iReturn = sp_OAGetProperty @iObjectId, 'GetStreamObject', @iStreamObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        create table #commenttext (id int identity, sourcecode varchar(255))


        select @vchTempText = 'STUB'
        while @vchTempText IS NOT NULL
        begin
            exec @iReturn = sp_OAMethod @iStreamObjectId, 'GetStream', @iReturnValue OUT, @vchTempText OUT
            if @iReturn <> 0 GOTO E_OAError

            if (@vchTempText IS NOT NULL) insert into #commenttext (sourcecode) select @vchTempText
        end

        select 'VCS'=sourcecode from #commenttext order by id
        select 'SQL'=text from syscomments where id = object_id(@vchObjectName) order by colid

    end

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    GOTO CleanUp
GO


-- ----------------------------
-- Procedure structure for dt_isundersourcecontrol
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_isundersourcecontrol]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_isundersourcecontrol]
GO

CREATE PROCEDURE [dbo].[dt_isundersourcecontrol]
    @vchLoginName varchar(255) = '',
    @vchPassword  varchar(255) = '',
    @iWhoToo      int = 0 /* 0 => Just check project; 1 => get list of objs */

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId = 0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

declare @iReturnValue int
select @iReturnValue = 0

declare @iStreamObjectId int
select @iStreamObjectId   = 0

declare @vchTempText varchar(255)

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   varchar(255)
    declare @vchSourceSafeINI varchar(255)
    declare @vchServerName    varchar(255)
    declare @vchDatabaseName  varchar(255)
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if (@vchProjectName IS NULL) or (@vchSourceSafeINI  IS NULL) or (@vchServerName IS NULL) or (@vchDatabaseName IS NULL)
    begin
        RAISERROR('Not Under Source Control',16,-1)
        return
    end

    if @iWhoToo = 1
    begin

        /* Get List of Procs in the project */
        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = sp_OAMethod @iObjectId,
                                    'GetListOfObjects',
                                    NULL,
                                    @vchProjectName,
                                    @vchSourceSafeINI,
                                    @vchServerName,
                                    @vchDatabaseName,
                                    @vchLoginName,
                                    @vchPassword

        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = sp_OAGetProperty @iObjectId, 'GetStreamObject', @iStreamObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        create table #ObjectList (id int identity, vchObjectlist varchar(255))

        select @vchTempText = 'STUB'
        while @vchTempText IS NOT NULL
        begin
            exec @iReturn = sp_OAMethod @iStreamObjectId, 'GetStream', @iReturnValue OUT, @vchTempText OUT
            if @iReturn <> 0 GOTO E_OAError

            if (@vchTempText IS NOT NULL) insert into #ObjectList (vchObjectlist ) select @vchTempText
        end

        select vchObjectlist from #ObjectList order by id
    end

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    goto CleanUp
GO


-- ----------------------------
-- Procedure structure for dt_removefromsourcecontrol
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_removefromsourcecontrol]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_removefromsourcecontrol]
GO

CREATE PROCEDURE [dbo].[dt_removefromsourcecontrol]

as

    set nocount on

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    exec dbo.dt_droppropertiesbyid @iPropertyObjectId, null

    /* -1 is returned by dt_droppopertiesbyid */
    if @@error <> 0 and @@error <> -1 return 1

    return 0
GO


-- ----------------------------
-- Procedure structure for dt_validateloginparams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_validateloginparams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_validateloginparams]
GO

CREATE PROCEDURE [dbo].[dt_validateloginparams]
    @vchLoginName  varchar(255),
    @vchPassword   varchar(255)
as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId =0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchSourceSafeINI varchar(255)
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT

    exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
    if @iReturn <> 0 GOTO E_OAError

    exec @iReturn = sp_OAMethod @iObjectId,
                                'ValidateLoginParams',
                                NULL,
                                @sSourceSafeINI = @vchSourceSafeINI,
                                @sLoginName = @vchLoginName,
                                @sPassword = @vchPassword
    if @iReturn <> 0 GOTO E_OAError

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    GOTO CleanUp
GO


-- ----------------------------
-- Procedure structure for dt_vcsenabled
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_vcsenabled]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_vcsenabled]
GO

CREATE PROCEDURE [dbo].[dt_vcsenabled]

as

set nocount on

declare @iObjectId int
select @iObjectId = 0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

    declare @iReturn int
    exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
    if @iReturn <> 0 raiserror('', 16, -1) /* Can't Load Helper DLLC */
GO


-- ----------------------------
-- Procedure structure for dt_whocheckedout
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_whocheckedout]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_whocheckedout]
GO

CREATE PROCEDURE [dbo].[dt_whocheckedout]
        @chObjectType  char(4),
        @vchObjectName varchar(255),
        @vchLoginName  varchar(255),
        @vchPassword   varchar(255)

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId =0

declare @VSSGUID varchar(100)
select @VSSGUID = 'SQLVersionControl.VCS_SQL'

    declare @iPropertyObjectId int

    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   varchar(255)
    declare @vchSourceSafeINI varchar(255)
    declare @vchServerName    varchar(255)
    declare @vchDatabaseName  varchar(255)
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if @chObjectType = 'PROC'
    begin
        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        declare @vchReturnValue varchar(255)
        select @vchReturnValue = ''

        exec @iReturn = sp_OAMethod @iObjectId,
                                    'WhoCheckedOut',
                                    @vchReturnValue OUT,
                                    @sProjectName = @vchProjectName,
                                    @sSourceSafeINI = @vchSourceSafeINI,
                                    @sObjectName = @vchObjectName,
                                    @sServerName = @vchServerName,
                                    @sDatabaseName = @vchDatabaseName,
                                    @sLoginName = @vchLoginName,
                                    @sPassword = @vchPassword

        if @iReturn <> 0 GOTO E_OAError

        select @vchReturnValue

    end

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror @iObjectId, @iReturn
    GOTO CleanUp
GO


-- ----------------------------
-- Procedure structure for dt_addtosourcecontrol_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_addtosourcecontrol_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_addtosourcecontrol_u]
GO

CREATE PROCEDURE [dbo].[dt_addtosourcecontrol_u]
    @vchSourceSafeINI nvarchar(255) = '',
    @vchProjectName   nvarchar(255) ='',
    @vchComment       nvarchar(255) ='',
    @vchLoginName     nvarchar(255) ='',
    @vchPassword      nvarchar(255) =''

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId = 0

declare @iStreamObjectId int
select @iStreamObjectId = 0

declare @VSSGUID nvarchar(100)
select @VSSGUID = N'SQLVersionControl.VCS_SQL'

declare @vchDatabaseName varchar(255)
select @vchDatabaseName = db_name()

declare @iReturnValue int
select @iReturnValue = 0

declare @iPropertyObjectId int
declare @vchParentId nvarchar(255)

declare @iObjectCount int
select @iObjectCount = 0

    exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
    if @iReturn <> 0 GOTO E_OAError


    /* Create Project in SS */
    exec @iReturn = sp_OAMethod @iObjectId,
                                'AddProjectToSourceSafe',
                                NULL,
                                @vchSourceSafeINI,
                                @vchProjectName output,
                                @@SERVERNAME,
                                @vchDatabaseName,
                                @vchLoginName,
                                @vchPassword,
                                @vchComment


    if @iReturn <> 0 GOTO E_OAError

    exec @iReturn = sp_OAGetProperty @iObjectId, N'GetStreamObject', @iStreamObjectId OUT

    if @iReturn <> 0 GOTO E_OAError

    /* Set Database Properties */

    begin tran SetProperties

    /* add high level object */

    exec @iPropertyObjectId = dbo.dt_adduserobject_vcs 'VCSProjectID'

    select @vchParentId = CONVERT(nvarchar(255),@iPropertyObjectId)

    exec dbo.dt_setpropertybyid_u @iPropertyObjectId, 'VCSProjectID', @vchParentId , NULL
    exec dbo.dt_setpropertybyid_u @iPropertyObjectId, 'VCSProject' , @vchProjectName , NULL
    exec dbo.dt_setpropertybyid_u @iPropertyObjectId, 'VCSSourceSafeINI' , @vchSourceSafeINI , NULL
    exec dbo.dt_setpropertybyid_u @iPropertyObjectId, 'VCSSQLServer', @@SERVERNAME, NULL
    exec dbo.dt_setpropertybyid_u @iPropertyObjectId, 'VCSSQLDatabase', @vchDatabaseName, NULL

    if @@error <> 0 GOTO E_General_Error

    commit tran SetProperties

    declare cursorProcNames cursor for
        select convert(nvarchar(255), name) from sysobjects where type = N'P' and name not like N'dt_%'
    open cursorProcNames

    while 1 = 1
    begin
        declare @vchProcName nvarchar(255)
        fetch next from cursorProcNames into @vchProcName
        if @@fetch_status <> 0
            break

        select colid, text into #ProcLines
        from syscomments
        where id = object_id(@vchProcName)
        order by colid

        declare @iCurProcLine int
        declare @iProcLines int
        select @iCurProcLine = 1
        select @iProcLines = (select count(*) from #ProcLines)
        while @iCurProcLine <= @iProcLines
        begin
            declare @pos int
            select @pos = 1
            declare @iCurLineSize int
            select @iCurLineSize = len((select text from #ProcLines where colid = @iCurProcLine))
            while @pos <= @iCurLineSize
            begin
                declare @vchProcLinePiece nvarchar(255)
                select @vchProcLinePiece = convert(nvarchar(255),
                    substring((select text from #ProcLines where colid = @iCurProcLine),
                              @pos, 255 ))
                exec @iReturn = sp_OAMethod @iStreamObjectId, N'AddStream', @iReturnValue OUT, @vchProcLinePiece
                if @iReturn <> 0 GOTO E_OAError
                select @pos = @pos + 255
            end
            select @iCurProcLine = @iCurProcLine + 1
        end
        drop table #ProcLines

        exec @iReturn = sp_OAMethod @iObjectId,
                                    'CheckIn_StoredProcedure',
                                    NULL,
                                    @sProjectName = @vchProjectName,
                                    @sSourceSafeINI = @vchSourceSafeINI,
                                    @sServerName = @@SERVERNAME,
                                    @sDatabaseName = @vchDatabaseName,
                                    @sObjectName = @vchProcName,
                                    @sComment = @vchComment,
                                    @sLoginName = @vchLoginName,
                                    @sPassword = @vchPassword,
                                    @iVCSFlags = 0,
                                    @iActionFlag = 0,
                                    @sStream = ''

        if @iReturn = 0 select @iObjectCount = @iObjectCount + 1

    end

CleanUp:
	close cursorProcNames
	deallocate cursorProcNames
    select @vchProjectName
    select @iObjectCount
    return

E_General_Error:
    /* this is an all or nothing.  No specific error messages */
    goto CleanUp

E_OAError:
    exec dbo.dt_displayoaerror_u @iObjectId, @iReturn
    goto CleanUp
GO


-- ----------------------------
-- Procedure structure for dt_checkinobject_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_checkinobject_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_checkinobject_u]
GO

CREATE PROCEDURE [dbo].[dt_checkinobject_u]
    @chObjectType  char(4),
    @vchObjectName nvarchar(255),
    @vchComment    nvarchar(255)='',
    @vchLoginName  nvarchar(255),
    @vchPassword   nvarchar(255)='',
    @iVCSFlags     int = 0,
    @iActionFlag   int = 0,   /* 0 => AddFile, 1 => CheckIn */
    @txStream1     Text = '', /* There is a bug that if items are NULL they do not pass to OLE servers */
    @txStream2     Text = '',
    @txStream3     Text = ''


as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId = 0

declare @VSSGUID nvarchar(100)
select @VSSGUID = N'SQLVersionControl.VCS_SQL'


declare @iPropertyObjectId int
select @iPropertyObjectId  = 0

    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   nvarchar(255)
    declare @vchSourceSafeINI nvarchar(255)
    declare @vchServerName    nvarchar(255)
    declare @vchDatabaseName  nvarchar(255)
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if @chObjectType = 'PROC'
    begin
        if @iActionFlag = 1
        begin
            /* Procedure Can have up to three streams
            Drop Stream, Create Stream, GRANT stream */

            begin tran compile_all

            /* try to compile the streams */
            exec (@txStream1)
            if @@error <> 0 GOTO E_Compile_Fail

            exec (@txStream2)
            if @@error <> 0 GOTO E_Compile_Fail

            exec (@txStream3)
            if @@error <> 0 GOTO E_Compile_Fail
        end

        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
        if @iReturn <> 0 GOTO E_OAError

        if @iActionFlag = 1
        begin
            exec @iReturn = sp_OAMethod @iObjectId,
                                        N'CheckIn_StoredProcedure',
                                        NULL,
                                        @sProjectName = @vchProjectName,
                                        @sSourceSafeINI = @vchSourceSafeINI,
                                        @sServerName = @vchServerName,
                                        @sDatabaseName = @vchDatabaseName,
                                        @sObjectName = @vchObjectName,
                                        @sComment = @vchComment,
                                        @sLoginName = @vchLoginName,
                                        @sPassword = @vchPassword,
                                        @iVCSFlags = @iVCSFlags,
                                        @iActionFlag = @iActionFlag,
                                        @sStream = @txStream2
        end
        else
        begin
            declare @iStreamObjectId int
            declare @iReturnValue int

            exec @iReturn = sp_OAGetProperty @iObjectId, N'GetStreamObject', @iStreamObjectId OUT
            if @iReturn <> 0 GOTO E_OAError

            select colid, text into #ProcLines
            from syscomments
            where id = object_id(@vchObjectName)
            order by colid

            declare @iCurProcLine int
            declare @iProcLines int
            select @iCurProcLine = 1
            select @iProcLines = (select count(*) from #ProcLines)
            while @iCurProcLine <= @iProcLines
            begin
                declare @pos int
                select @pos = 1
                declare @iCurLineSize int
                select @iCurLineSize = len((select text from #ProcLines where colid = @iCurProcLine))
                while @pos <= @iCurLineSize
                begin
                    declare @vchProcLinePiece nvarchar(255)
                    select @vchProcLinePiece = convert(nvarchar(255),
                        substring((select text from #ProcLines where colid = @iCurProcLine),
                                  @pos, 255 ))
                    exec @iReturn = sp_OAMethod @iStreamObjectId, N'AddStream', @iReturnValue OUT, @vchProcLinePiece
                    if @iReturn <> 0 GOTO E_OAError
                    select @pos = @pos + 255
                end
                select @iCurProcLine = @iCurProcLine + 1
            end
            drop table #ProcLines

            exec @iReturn = sp_OAMethod @iObjectId,
                                        N'CheckIn_StoredProcedure',
                                        NULL,
                                        @sProjectName = @vchProjectName,
                                        @sSourceSafeINI = @vchSourceSafeINI,
                                        @sServerName = @vchServerName,
                                        @sDatabaseName = @vchDatabaseName,
                                        @sObjectName = @vchObjectName,
                                        @sComment = @vchComment,
                                        @sLoginName = @vchLoginName,
                                        @sPassword = @vchPassword,
                                        @iVCSFlags = @iVCSFlags,
                                        @iActionFlag = @iActionFlag,
                                        @sStream = ''
        end

        if @iReturn <> 0 GOTO E_OAError

        if @iActionFlag = 1
        begin
            commit tran compile_all
            if @@error <> 0 GOTO E_Compile_Fail
        end

    end

CleanUp:
    return

E_Compile_Fail:
    declare @lerror int
    select @lerror = @@error
    rollback tran compile_all
    RAISERROR (@lerror,16,-1)
    goto CleanUp

E_OAError:
    if @iActionFlag = 1 rollback tran compile_all
    exec dbo.dt_displayoaerror_u @iObjectId, @iReturn
    goto CleanUp
GO


-- ----------------------------
-- Procedure structure for dt_checkoutobject_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_checkoutobject_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_checkoutobject_u]
GO

CREATE PROCEDURE [dbo].[dt_checkoutobject_u]
    @chObjectType  char(4),
    @vchObjectName nvarchar(255),
    @vchComment    nvarchar(255),
    @vchLoginName  nvarchar(255),
    @vchPassword   nvarchar(255),
    @iVCSFlags     int = 0,
    @iActionFlag   int = 0/* 0 => Checkout, 1 => GetLatest, 2 => UndoCheckOut */

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId =0

declare @VSSGUID nvarchar(100)
select @VSSGUID = N'SQLVersionControl.VCS_SQL'

declare @iReturnValue int
select @iReturnValue = 0

declare @vchTempText nvarchar(255)

/* this is for our strings */
declare @iStreamObjectId int
select @iStreamObjectId = 0

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   nvarchar(255)
    declare @vchSourceSafeINI nvarchar(255)
    declare @vchServerName    nvarchar(255)
    declare @vchDatabaseName  nvarchar(255)
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if @chObjectType = 'PROC'
    begin
        /* Procedure Can have up to three streams
           Drop Stream, Create Stream, GRANT stream */

        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = sp_OAMethod @iObjectId,
                                    N'CheckOut_StoredProcedure',
                                    NULL,
                                    @sProjectName = @vchProjectName,
                                    @sSourceSafeINI = @vchSourceSafeINI,
                                    @sObjectName = @vchObjectName,
                                    @sServerName = @vchServerName,
                                    @sDatabaseName = @vchDatabaseName,
                                    @sComment = @vchComment,
                                    @sLoginName = @vchLoginName,
                                    @sPassword = @vchPassword,
                                    @iVCSFlags = @iVCSFlags,
                                    @iActionFlag = @iActionFlag

        if @iReturn <> 0 GOTO E_OAError


        exec @iReturn = sp_OAGetProperty @iObjectId, N'GetStreamObject', @iStreamObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        create table #commenttext (id int identity, sourcecode nvarchar(255))


        select @vchTempText = N'STUB'
        while @vchTempText IS NOT NULL
        begin
            exec @iReturn = sp_OAMethod @iStreamObjectId, N'GetStream', @iReturnValue OUT, @vchTempText OUT
            if @iReturn <> 0 GOTO E_OAError

            if (@vchTempText IS NOT NULL) insert into #commenttext (sourcecode) select @vchTempText
        end

        select N'VCS'=sourcecode from #commenttext order by id
        select N'SQL'=text from syscomments where id = object_id(@vchObjectName) order by colid

    end

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror_u @iObjectId, @iReturn
    GOTO CleanUp
GO


-- ----------------------------
-- Procedure structure for dt_displayoaerror_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_displayoaerror_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_displayoaerror_u]
GO

CREATE PROCEDURE [dbo].[dt_displayoaerror_u]
    @iObject int,
    @iresult int
as

set nocount on

declare @vchOutput      nvarchar(255)
declare @hr             int
declare @vchSource      nvarchar(255)
declare @vchDescription nvarchar(255)

    exec @hr = sp_OAGetErrorInfo @iObject, @vchSource OUT, @vchDescription OUT

    select @vchOutput = @vchSource + ': ' + @vchDescription
    raiserror (@vchOutput,16,-1)

    return
GO


-- ----------------------------
-- Procedure structure for dt_getpropertiesbyid_vcs_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_getpropertiesbyid_vcs_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_getpropertiesbyid_vcs_u]
GO

CREATE PROCEDURE [dbo].[dt_getpropertiesbyid_vcs_u]
    @id       int,
    @property varchar(64),
    @value    nvarchar(255) = NULL OUT

as

    set nocount on

    select @value = (
        select uvalue
                from dbo.dtproperties
                where @id=objectid and @property=property
                )
GO


-- ----------------------------
-- Procedure structure for dt_isundersourcecontrol_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_isundersourcecontrol_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_isundersourcecontrol_u]
GO

CREATE PROCEDURE [dbo].[dt_isundersourcecontrol_u]
    @vchLoginName nvarchar(255) = '',
    @vchPassword  nvarchar(255) = '',
    @iWhoToo      int = 0 /* 0 => Just check project; 1 => get list of objs */

as

	set nocount on

	declare @iReturn int
	declare @iObjectId int
	select @iObjectId = 0

	declare @VSSGUID nvarchar(100)
	select @VSSGUID = N'SQLVersionControl.VCS_SQL'

	declare @iReturnValue int
	select @iReturnValue = 0

	declare @iStreamObjectId int
	select @iStreamObjectId   = 0

	declare @vchTempText nvarchar(255)

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   nvarchar(255)
    declare @vchSourceSafeINI nvarchar(255)
    declare @vchServerName    nvarchar(255)
    declare @vchDatabaseName  nvarchar(255)
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if (@vchProjectName IS NULL) or (@vchSourceSafeINI  IS NULL) or (@vchServerName IS NULL) or (@vchDatabaseName IS NULL)
    begin
        RAISERROR(N'Not Under Source Control',16,-1)
        return
    end

    if @iWhoToo = 1
    begin

        /* Get List of Procs in the project */
        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = sp_OAMethod @iObjectId,
                                    N'GetListOfObjects',
                                    NULL,
                                    @vchProjectName,
                                    @vchSourceSafeINI,
                                    @vchServerName,
                                    @vchDatabaseName,
                                    @vchLoginName,
                                    @vchPassword

        if @iReturn <> 0 GOTO E_OAError

        exec @iReturn = sp_OAGetProperty @iObjectId, N'GetStreamObject', @iStreamObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        create table #ObjectList (id int identity, vchObjectlist nvarchar(255))

        select @vchTempText = N'STUB'
        while @vchTempText IS NOT NULL
        begin
            exec @iReturn = sp_OAMethod @iStreamObjectId, N'GetStream', @iReturnValue OUT, @vchTempText OUT
            if @iReturn <> 0 GOTO E_OAError

            if (@vchTempText IS NOT NULL) insert into #ObjectList (vchObjectlist ) select @vchTempText
        end

        select vchObjectlist from #ObjectList order by id
    end

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror_u @iObjectId, @iReturn
    goto CleanUp
GO


-- ----------------------------
-- Procedure structure for dt_validateloginparams_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_validateloginparams_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_validateloginparams_u]
GO

CREATE PROCEDURE [dbo].[dt_validateloginparams_u]
    @vchLoginName  nvarchar(255),
    @vchPassword   nvarchar(255)
as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId =0

declare @VSSGUID nvarchar(100)
select @VSSGUID = N'SQLVersionControl.VCS_SQL'

    declare @iPropertyObjectId int
    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchSourceSafeINI nvarchar(255)
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT

    exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT
    if @iReturn <> 0 GOTO E_OAError

    exec @iReturn = sp_OAMethod @iObjectId,
                                N'ValidateLoginParams',
                                NULL,
                                @sSourceSafeINI = @vchSourceSafeINI,
                                @sLoginName = @vchLoginName,
                                @sPassword = @vchPassword
    if @iReturn <> 0 GOTO E_OAError

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror_u @iObjectId, @iReturn
    GOTO CleanUp
GO


-- ----------------------------
-- Procedure structure for dt_whocheckedout_u
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dt_whocheckedout_u]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[dt_whocheckedout_u]
GO

CREATE PROCEDURE [dbo].[dt_whocheckedout_u]
        @chObjectType  char(4),
        @vchObjectName nvarchar(255),
        @vchLoginName  nvarchar(255),
        @vchPassword   nvarchar(255)

as

set nocount on

declare @iReturn int
declare @iObjectId int
select @iObjectId =0

declare @VSSGUID nvarchar(100)
select @VSSGUID = N'SQLVersionControl.VCS_SQL'

    declare @iPropertyObjectId int

    select @iPropertyObjectId = (select objectid from dbo.dtproperties where property = 'VCSProjectID')

    declare @vchProjectName   nvarchar(255)
    declare @vchSourceSafeINI nvarchar(255)
    declare @vchServerName    nvarchar(255)
    declare @vchDatabaseName  nvarchar(255)
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSProject',       @vchProjectName   OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSourceSafeINI', @vchSourceSafeINI OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLServer',     @vchServerName    OUT
    exec dbo.dt_getpropertiesbyid_vcs_u @iPropertyObjectId, 'VCSSQLDatabase',   @vchDatabaseName  OUT

    if @chObjectType = 'PROC'
    begin
        exec @iReturn = sp_OACreate @VSSGUID, @iObjectId OUT

        if @iReturn <> 0 GOTO E_OAError

        declare @vchReturnValue nvarchar(255)
        select @vchReturnValue = ''

        exec @iReturn = sp_OAMethod @iObjectId,
                                    N'WhoCheckedOut',
                                    @vchReturnValue OUT,
                                    @sProjectName = @vchProjectName,
                                    @sSourceSafeINI = @vchSourceSafeINI,
                                    @sObjectName = @vchObjectName,
                                    @sServerName = @vchServerName,
                                    @sDatabaseName = @vchDatabaseName,
                                    @sLoginName = @vchLoginName,
                                    @sPassword = @vchPassword

        if @iReturn <> 0 GOTO E_OAError

        select @vchReturnValue

    end

CleanUp:
    return

E_OAError:
    exec dbo.dt_displayoaerror_u @iObjectId, @iReturn
    GOTO CleanUp
GO


-- ----------------------------
-- Procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- Procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- Procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- Procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- Procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- Procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- Procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- Function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Primary Key structure for table book
-- ----------------------------
ALTER TABLE [dbo].[book] ADD CONSTRAINT [PK__book__7A9C383C] PRIMARY KEY CLUSTERED ([bookid])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table category
-- ----------------------------
ALTER TABLE [dbo].[category] ADD CONSTRAINT [PK__category__78B3EFCA] PRIMARY KEY CLUSTERED ([catid])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table dtproperties
-- ----------------------------
ALTER TABLE [dbo].[dtproperties] ADD CONSTRAINT [pk_dtproperties] PRIMARY KEY CLUSTERED ([id], [property])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table major
-- ----------------------------
ALTER TABLE [dbo].[major] ADD CONSTRAINT [PK__major__A5B2A89C2B3F6F97] PRIMARY KEY CLUSTERED ([majorid])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table student
-- ----------------------------
ALTER TABLE [dbo].[student] ADD CONSTRAINT [PK__student__76CBA758] PRIMARY KEY CLUSTERED ([stuid])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED ([principal_id] ASC, [name] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [PK__sysdiagr__C2B05B61670782C9] PRIMARY KEY CLUSTERED ([diagram_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table book
-- ----------------------------
ALTER TABLE [dbo].[book] ADD CONSTRAINT [FK__book__catid__7B905C75] FOREIGN KEY ([catid]) REFERENCES [dbo].[category] ([catid]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table borrow
-- ----------------------------
ALTER TABLE [dbo].[borrow] ADD CONSTRAINT [FK__borrow__stuid__1FCDBCEB] FOREIGN KEY ([stuid]) REFERENCES [dbo].[student] ([stuid]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[borrow] ADD CONSTRAINT [FK__borrow__bookid__20C1E124] FOREIGN KEY ([bookid]) REFERENCES [dbo].[book] ([bookid]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table student
-- ----------------------------
ALTER TABLE [dbo].[student] ADD CONSTRAINT [FK__student__majorid__2D27B809] FOREIGN KEY ([majorid]) REFERENCES [dbo].[major] ([majorid]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

