


-- Bronze Layer Loading Procedure (PostgreSQL)
-- Source CSV tables were imported manually using pgAdmin's Import/Export tool
-- because server-side COPY encountered permission issues.
-- PostgreSQL implementation is in progress.


-- PROCEDURE: bronze.load_bronze()

-- DROP PROCEDURE IF EXISTS bronze.load_bronze();

CREATE OR REPLACE PROCEDURE bronze.load_bronze(
	)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    start_time TIMESTAMP;
	end_time TIMESTAMP;
   
BEGIN
     start_time := clock_timestamp();
    RAISE NOTICE 'Starting Bronze layer loading';

    RAISE NOTICE 'Bronze layer loading completed';


	end_time := clock_timestamp();
	EXCEPTION
	WHEN OTHERS THEN
	RAISE NOTICE 'Error message: %', SQLERRM;
	RAISE NOTICE 'Error code: %', SQLSTATE;
	
	 RAISE NOTICE 'EXTRACT(EPOCH FROM (end_time - start_time))';
END;
$BODY$;

