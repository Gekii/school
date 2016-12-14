use watson;
create table if not exists computer
(
	computer_ID int,
	computername text,
	operatingsystem text,
	mac text,
	PRIMARY KEY (computer_ID)
);

create table if not exists compUser
(
	user_ID int,
	username text,
	PRIMARY KEY (user_ID)
);

create table if not exists content
(
	content_ID int,
	reportid text,
	reporttype text,
	eventtime datetime,
	bucketid text,
	appname text,
	PRIMARY KEY (content_ID)
);
create table if not exists WERFile
(
	WERFile_ID int,
	filename text,
	path text,
	computer_ID int,
	user_ID int,
	content_ID int,
	PRIMARY KEY (WERFile_ID),
	FOREIGN KEY (computer_ID) REFERENCES computer(computer_ID),
	FOREIGN KEY (user_ID) REFERENCES compUser(user_ID),
	FOREIGN KEY (content_ID) REFERENCES content(content_ID)
);

