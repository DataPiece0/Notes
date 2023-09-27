BEGIN;
	ALTER TABLE staging_table
		--DROP COLUMN IF EXISTS "host id",
		DROP COLUMN IF EXISTS country,
		DROP COLUMN IF EXISTS "country code",
		DROP COLUMN IF EXISTS "last review",
		DROP COLUMN IF EXISTS house_rules,
		DROP COLUMN IF EXISTS license;
		
		
	DROP TABLE IF EXISTS air_bnb;
	CREATE TABLE air_bnb AS
	SELECT DISTINCT * FROM staging_table;
	
END;

SELECT * FROM air_bnb;
