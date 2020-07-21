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
    foreign key (locationType) REFERENCES monitoringlocationtype(Name),
    foreign key (horizCollectMethod) REFERENCES horizontalcollectionmethod(Name),
    foreign key (horizRefDatum) REFERENCES horizontalreferencedatum(Name),
    foreign key (stateCd) REFERENCES state(Code),
    foreign key (munName) REFERENCES municipalities(Name),
    foreign key (subBasin) REFERENCES subbasin(SubBasin),
    check (40.9 > ylat < 42.11)
);



