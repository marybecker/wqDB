create table awqx.stations(
	staSeq	int(10) NOT NULL UNIQUE,
	locationName	varchar (255) NOT NULL,
	locationDescription varchar (255),
	locationType varchar (45) NOT NULL,
	ylat float (12) NOT NULL,
	xlong float (14) NOT NULL,
	sourceMapScale int (10) NOT NULL,
    horizCollectMethod varchar (70) NOT NULL,
    horizRefDatum varchar (6) NOT NULL,
    stateCd varchar (4) NOT NULL,
    munName varchar (50) NOT NULL,
    subBasin int (4) NOT NULL,
    adbSegID varchar (20),
    createDate datetime NOT NULL,
    createUser varchar (50) NOT NULL,
    lastUpdateDate datetime,
    lastUpdateUser varchar (50),
    primary key (ylat,xlong),
    constraint locType foreign key (locationType) REFERENCES monitoringlocationtype(Name),
    constraint horizCollectMeth foreign key (horizCollectMethod) REFERENCES horizontalcollectionmethod(Name),
    foreign key (horizRefDatum) REFERENCES horizontalreferencedatum(Name),
    foreign key (stateCd) REFERENCES state(Code),
    foreign key (munName) REFERENCES municipalities(Name),
    foreign key (subBasin) REFERENCES subbasin(SubBasin),
    constraint ylat_outOfBounds check (ylat >= 40.8 AND ylat < 42.3),
    constraint xlong_outOfBounds check (xlong >= -73.8 AND xlong < -71.8)
);

create table awqx.logErr(
cmdType varchar(50) NOT NULL,
tableType varchar(50) NOT NULL,
fileNm varchar(50) NOT NULL,
attemptDate datetime NOT NULL,
fileRow int NOT NULL,
errMsg varchar(200),
primary key (fileNm, fileRow, attemptDate)
);



