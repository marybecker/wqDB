
-- CREATE STATIONS TABLE

drop table if exists awqx.stations;
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
    foreign key (createUser) REFERENCES contacts (ContactID),
    foreign key (lastUpdateUser) REFERENCES contacts (ContactID),
    constraint ylat_outOfBounds check (ylat >= 40.8 AND ylat < 42.3),
    constraint xlong_outOfBounds check (xlong >= -73.8 AND xlong < -71.8)
);

-- CREATE ERROR LOG

create table awqx.errlog(
	cmdType varchar(50) NOT NULL,
	tableType varchar(50) NOT NULL,
	fileNm varchar(50) NOT NULL,
	attemptDate datetime NOT NULL,
	fileRow int NOT NULL,
	errMsg varchar(200),
	primary key (fileNm, fileRow, attemptDate)
);

-- CREATE PROJECTS TABLE

drop table if exists awqx.projects;
create table awqx.projects(
	ProjectIdentifier varchar(50) NOT NULL,
	ProjectName varchar(512) NOT NULL,
	ProjectDescriptionText varchar(4000) NOT NULL,
    SamplingDesignTypeCode varchar(20),
	QAPPApprovedIndicator boolean,
	QAPPApprovalAgencyName varchar (50),
    QAPPlink varchar(500),
    createDate datetime NOT NULL,
    createUser varchar (50) NOT NULL,
    lastUpdateDate datetime,
    lastUpdateUser varchar (50),
    primary key (ProjectIdentifier),
    foreign key (SamplingDesignTypeCode) REFERENCES samplingdesigntype (Code),
    foreign key (createUser) REFERENCES contacts (ContactID),
    foreign key (lastUpdateUser) REFERENCES contacts (ContactID)
);

-- CREATE ACTIVITIES TABLES

drop table if exists awqx.activity;
create table awqx.activity(
	ProjectIdentifier varchar(50) NOT NULL,
	staSeq int NOT NULL,
	ActivityIdentifier varchar(55) NOT NULL,
	ActivityTypeCode varchar(70) NOT NULL,
	ActivityMediaName varchar(20) NOT NULL,
	ActivityMediaSubdivisionName varchar(60),
	ActivityStartDate date NOT NULL,
	ActivityTime time NOT NULL,
	ActivityTimeZoneCodetimezone varchar(4),
	SampleCollectionMethodIdentifier varchar(35),
	SampleCollectionEquipmentName varchar(60),
	SampleCollectionEquipmentCommentText varchar (4000),
	LaboratoryName varchar(60),
	ActivityConductingOrganizationText varchar(120),
	ActivityCommentText varchar(4000),
	ActContactLead varchar(50) NOT NULL,
	ActFieldCrew varchar(4000),
	createDate datetime NOT NULL,
	createUser varchar (50) NOT NULL,
	lastUpdateDate datetime,
	lastUpdateUser varchar (50),
	primary key (staSeq,ActivityStartDate,ActivityTime,ActivityTypeCode,SampleCollectionMethodIdentifier),
    foreign key (ProjectIdentifier) REFERENCES projects (ProjectIdentifier),
    foreign key (staSeq) REFERENCES stations (staSeq),
	foreign key (ActivityTypeCode) REFERENCES activitytype(Code),
	foreign key (ActivityMediaName) REFERENCES activitymedia(Name),
	foreign key (ActivityMediaSubdivisionName) REFERENCES activitymediasubdivision(Name),
	foreign key (ActivityTimeZoneCodetimezone) REFERENCES timezone(Code),
	foreign key (SampleCollectionMethodIdentifier) REFERENCES samplecollectionmethod(ID),
	foreign key (SampleCollectionEquipmentName) REFERENCES samplecollectionequipment(Name),
	foreign key (ActContactLead) REFERENCES contacts(ContactID),
	foreign key (createUser) REFERENCES contacts (ContactID),
	foreign key (lastUpdateUser) REFERENCES contacts (ContactID)
);

drop table if exists awqx.activitychem;
create table awqx.activitychem(
	ProjectIdentifier varchar(50) NOT NULL,
	staSeq int NOT NULL,
	ActivityIdentifier varchar(55) NOT NULL,
	ActivityTypeCode varchar(70) NOT NULL,
	ActivityMediaName varchar(20) NOT NULL,
	ActivityMediaSubdivisionName varchar(60),
	ActivityStartDate date NOT NULL,
	ActivityTime time NOT NULL,
	ActivityTimeZoneCodetimezone varchar(4),
	SampleCollectionMethodIdentifier varchar(35),
	SampleCollectionEquipmentName varchar(60),
	SampleCollectionEquipmentCommentText varchar (4000),
	ActivityConductingOrganizationText varchar(120),
	ActivityCommentText varchar(4000),
	ActContactLead varchar(50) NOT NULL,
	ActFieldCrew varchar(4000),
    SamplePreparationMethodIdentifier varchar(35),
	ActivityRelativeDepthName varchar(30),
	ActivityDepthMeasureValue decimal(5,2),
	ActivityDepthMeasureUnitCode varchar(12),
	InstreamLocation INT,
	LabAccession varchar(50) NOT NULL,
	LaboratoryName varchar(60) NOT NULL,
	createDate datetime NOT NULL,
	createUser varchar (50) NOT NULL,
	lastUpdateDate datetime,
	lastUpdateUser varchar (50),
	primary key (staSeq,ActivityStartDate,ActivityTime,ActivityTypeCode,SampleCollectionMethodIdentifier),
    foreign key (ProjectIdentifier) REFERENCES projects (ProjectIdentifier),
    foreign key (staSeq) REFERENCES stations (staSeq),
	foreign key (ActivityTypeCode) REFERENCES activitytype(Code),
	foreign key (ActivityMediaName) REFERENCES activitymedia(Name),
	foreign key (ActivityMediaSubdivisionName) REFERENCES activitymediasubdivision(Name),
	foreign key (ActivityTimeZoneCodetimezone) REFERENCES timezone(Code),
	foreign key (SampleCollectionMethodIdentifier) REFERENCES samplecollectionmethod(ID),
	foreign key (SampleCollectionEquipmentName) REFERENCES samplecollectionequipment(Name),
	foreign key (ActContactLead) REFERENCES contacts(ContactID),
	foreign key (createUser) REFERENCES contacts (ContactID),
	foreign key (lastUpdateUser) REFERENCES contacts (ContactID),
	foreign key (ActivityRelativeDepthName) REFERENCES activityrelativedepth(Name),
	foreign key (ActivityDepthMeasureUnitCode) REFERENCES measurementunit(Code),
	foreign key (InstreamLocation) REFERENCES instreamlocation(N)
);

drop table if exists awqx.activitybio;
create table awqx.activitybio(
ActivityIdentifier varchar(55) NOT NULL,
SamplePreparationMethodIdentifier varchar(35),
AssemblageSampledName varchar(50) NOT NULL,
CollectionAreaMeasureValue decimal(5,2),
CollectionAreaMeasureUnitCode varchar(12),
HabitatSelectionMethod varchar(35) NOT NULL,
CollectionDurationMeasureValue decimal(5,2),
CollectionDurationMeasureUnitCode varchar(12),
ReachLengthMeasureValue decimal(5,2),
ReachLengthMeasureUnitCode varchar(12),
ReachWidthMeasureValue decimal(5,2),
ReachWidthMeasureUnitCode varchar(12),
NetMeshSizeMeasureValue varchar(60),
NetMeshSizeMeasureUnitCode varchar(12),
PassCount int(5),
Amps float,
Pulses float,
CollectionEfficiencyEst float,
TotalEnergizedMeasure float,
TotalEnergizedMeasureUnit decimal(5,2),
GearUsed varchar(30),
Volts float,
DutyCycle float,
primary key (ActivityIdentifier),
foreign key (AssemblageSampledName) REFERENCES assemblage(Name),
foreign key (CollectionAreaMeasureUnitCode) REFERENCES measurementunit(Code),
foreign key (HabitatSelectionMethod) REFERENCES habitatselectionmethod(Name),
foreign key (CollectionDurationMeasureUnitCode) REFERENCES measurementunit(Code),
foreign key (ReachLengthMeasureUnitCode) REFERENCES measurementunit(Code),
foreign key (ReachWidthMeasureUnitCode) REFERENCES measurementunit(Code),
foreign key (NetMeshSizeMeasureUnitCode) REFERENCES measurementunit(Code)
);

-- CREATE RESULTS TABLES

drop table if exists awqx.results;
create table awqx.results(
ActivityIdentifier varchar(55) NOT NULL,
CharacteristicName varchar (255) NOT NULL,
ResultMeasureValue varchar(60) NOT NULL,
ResultMeasureUnitCode varchar(12) NOT NULL,
ResultValueTypeName varchar(20) NOT NULL,
AnalysisStartDate date,
ResultStatusIdentifier varchar(12) NOT NULL,
ResultComment varchar(4000), 
primary key (ActivityIdentifier, CharacteristicName),
foreign key (CharacteristicName) REFERENCES characteristic(Name),
foreign key (ResultValueTypeName) REFERENCES resultvaluetype(Name),
foreign key (ResultStatusIdentifier) REFERENCES resultstatus(Name)
);

drop table if exists awqx.resultschem;
create table awqx.resultschem(
ActivityIdentifier varchar(55) NOT NULL,
LabAccession varchar(55) NOT NULL,
CharacteristicName varchar (255) NOT NULL,
ResultMeasureValue varchar(60) NOT NULL,
ResultMeasureUnitCode varchar(12) NOT NULL,
ResultValueTypeName varchar(20) NOT NULL,
AnalysisStartDate date,
ResultStatusIdentifier varchar(12) NOT NULL,
ResultComment varchar(4000), 
MethodSpeciationName varchar(20) NULL,
ResultDetectionConditionText varchar(35) NULL,
ResultSampleFractionText varchar(25),
ResultAnalyticalMethodIdentifier varchar(35),
ResultAnalyticalMethodName varchar(250), 
ResultAnalyticalMethodContext varchar(120),
DetectionQuantitationTypeName varchar(35),
DetectionQuantitationLimitMeasureValue varchar(60),
DetectionLimitMeasureUnitCode varchar(12),
createDate datetime NOT NULL,
createUser varchar (50) NOT NULL,
lastUpdateDate datetime,
lastUpdateUser varchar (50),
primary key (ActivityIdentifier, CharacteristicName, ResultAnalyticalMethodIdentifier),
foreign key (CharacteristicName) REFERENCES characteristic(Name),
foreign key (ResultMeasureUnitCode) REFERENCES measurementunit(Code),
foreign key (ResultValueTypeName) REFERENCES resultvaluetype(Name),
foreign key (ResultStatusIdentifier) REFERENCES resultstatus(Name),
foreign key (MethodSpeciationName) REFERENCES methodspeciation(Name),
-- foreign key (ResultDetectionConditionText) REFERENCES resultdetectioncondition(Name),
foreign key (ResultSampleFractionText) REFERENCES samplefraction(Name),
foreign key (ResultAnalyticalMethodContext) REFERENCES analyticalmethodcontext(Code),
foreign key (DetectionQuantitationTypeName) REFERENCES quantitationlimittype(Name),
foreign key (DetectionLimitMeasureUnitCode) REFERENCES measurementunit(Code)
);

drop table if exists awqx.resultsmeter;
create table awqx.resultsmeter(
ActivityIdentifier varchar(55) NOT NULL,
CharacteristicName varchar (255) NOT NULL,
ResultMeasureValue varchar(60) NOT NULL,
ResultMeasureUnitCode varchar(12) NOT NULL,
ResultValueTypeName varchar(20) NOT NULL,
AnalysisStartDate date,
ResultStatusIdentifier varchar(12) NOT NULL,
ResultComment varchar(4000),
ResultDepthHeightMeasureValue varchar(60),
ResultDepthHeightMeasureUnitCode varchar(12), 
primary key (ActivityIdentifier, CharacteristicName),
foreign key (CharacteristicName) REFERENCES characteristic(Name),
foreign key (ResultValueTypeName) REFERENCES resultvaluetype(Name),
foreign key (ResultStatusIdentifier) REFERENCES resultstatus(Name),
foreign key (ResultDepthHeightMeasureUnitCode) REFERENCES measurementunit(Code)
);

create table awqx.resultsbugs(
ActivityIdentifier varchar(55) NOT NULL,
LabAccession varchar(55) NOT NULL,
);

create table awqx.resultsfish(
ActivityIdentifier varchar(55) NOT NULL,
LabAccession varchar(55) NOT NULL,
);

ALTER TABLE awqx.activity
ADD createDate datetime NOT NULL;
ALTER TABLE awqx.activity
ADD createUser varchar (50) NOT NULL;
ALTER TABLE awqx.activity
ADD lastUpdateDate datetime;
ALTER TABLE awqx.activity
ADD lastUpdateUser varchar (50);

