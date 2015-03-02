### Linking the tables together

CREATE TABLE 2000_to_2009_tstcar
AS
SELECT * FROM 2000tstcar
UNION ALL
SELECT * FROM 2001tstcar
UNION ALL
SELECT * FROM 2002tstcar
UNION ALL
SELECT * FROM 2003tstcar
UNION ALL
SELECT * FROM 2004tstcar
UNION ALL
SELECT * FROM 2005tstcar
UNION ALL
SELECT * FROM 2006tstcar
UNION ALL
SELECT * FROM 2007tstcar
UNION ALL
SELECT * FROM 2008tstcar
UNION ALL
SELECT * FROM 2008tstcar
;

CREATE TABLE 2010_to_2015_tstcar
AS
SELECT * FROM 2010tstcar
UNION ALL
SELECT * FROM 2011tstcar
UNION ALL
SELECT * FROM 2012tstcar
UNION ALL
SELECT * FROM 2013tstcar
UNION ALL
SELECT * FROM 2014tstcar
UNION ALL
SELECT * FROM 2015tstcar
;


INSERT INTO all_years_make_model
SELECT YEAR, make, model
FROM 1994mftcl;

INSERT INTO all_years_make_model
SELECT YEAR, make, model
FROM 1995mftcl;

INSERT INTO all_years_make_model
SELECT YEAR, make, model
FROM 1996mftcl;

INSERT INTO all_years_make_model
SELECT YEAR, make, model
FROM 1997mftcl;

INSERT INTO all_years_make_model
SELECT yr, `mfr name`, carline
FROM 1998tstcar;

INSERT INTO all_years_make_model
SELECT yr, `mfr name`, carline
FROM 1999tstcar;

INSERT INTO all_years_make_model
SELECT mdlyr_dt, vi_mfr_nm, `CL_NM`
FROM 2000_to_2009_tstcar
;

INSERT INTO all_years_make_model
SELECT `Model YEAR`, `Represented Test Veh Make`, `Represented Test Veh Model`
FROM 2010_to_2015_tstcar
;
