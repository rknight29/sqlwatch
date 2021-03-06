﻿CREATE TABLE [dbo].[sql_perf_mon_snapshot_header]
(
	[snapshot_time] datetime,
	[snapshot_type_id] tinyint not null default 1 foreign key references dbo.[sql_perf_mon_config_snapshot_type]([snapshot_type_id]),
	 CONSTRAINT pk_snapshot PRIMARY KEY (
		[snapshot_time],[snapshot_type_id]
	)
)
go

create nonclustered index idx_snapshot_type_id on [dbo].[sql_perf_mon_snapshot_header]([snapshot_type_id])
go