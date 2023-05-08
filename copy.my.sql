--
-- COPY the Join Order Benchmark data FROM csv files into PostgreSQL database.
--
-- Launch this script via a command, like this:
-- psql -vdatadir="'/home/danolivo/jo-bench'" -f /home/danolivo/jo-bench/copy.sql
-- XXX: Don't forget to use the symbol "'" in a value of -vdatadir!
--

SET GLOBAL local_infile = 'ON';

-- DELIMITER //
-- 
-- DROP FUNCTION IF EXISTS imdb_path;
-- CREATE FUNCTION imdb_path(path text, tblname text, parts integer) RETURNS text DETERMINISTIC
-- BEGIN
-- 
-- 	DECLARE full_path text;
-- 	
-- 	IF parts = 1 THEN
-- 		SET full_path = CONCAT('\'', path, '/csv/', tblname, '.csv\'');
-- 	ELSE
-- 		SET full_path = CONCAT('\'', path, '/csv/', tblname, '/', tblname, '_', 'parts', '.csv\'');
-- 	END IF;
-- 
-- 	RETURN full_path;
-- END; //
-- 
-- DELIMITER ;

BEGIN;
	TRUNCATE aka_title;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/aka_title.csv' INTO TABLE aka_title FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE aka_name;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/aka_name.csv' INTO TABLE aka_name FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE comp_cast_type;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/comp_cast_type.csv' INTO TABLE comp_cast_type FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE company_name;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/company_name.csv' INTO TABLE company_name FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE company_type;                                                                                                                            
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/company_type.csv' INTO TABLE company_type FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE complete_cast;                                                                                                                           
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/complete_cast.csv' INTO TABLE complete_cast FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE info_type;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/info_type.csv' INTO TABLE info_type FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE keyword;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/keyword.csv' INTO TABLE keyword FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE kind_type;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/kind_type.csv' INTO TABLE kind_type FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE link_type;                                                                                                                         
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/link_type.csv' INTO TABLE link_type FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE movie_companies;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_companies.csv' INTO TABLE movie_companies FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE movie_info_idx;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info_idx.csv' INTO TABLE movie_info_idx FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE movie_keyword;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_keyword.csv' INTO TABLE movie_keyword FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE movie_link;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_link.csv' INTO TABLE movie_link FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE role_type;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/role_type.csv' INTO TABLE role_type FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	
	-- Copy large tables
	TRUNCATE movie_info;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info/movie_info_1.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info/movie_info_2.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info/movie_info_3.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info/movie_info_4.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info/movie_info_5.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info/movie_info_6.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info/movie_info_7.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info/movie_info_8.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info/movie_info_9.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info/movie_info_10.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info/movie_info_11.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info/movie_info_12.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info/movie_info_13.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info/movie_info_14.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/movie_info/movie_info_15.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE title;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/title/title_1.csv' INTO TABLE title FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/title/title_2.csv' INTO TABLE title FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE person_info;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/person_info/person_info_1.csv' INTO TABLE person_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/person_info/person_info_2.csv' INTO TABLE person_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/person_info/person_info_3.csv' INTO TABLE person_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/person_info/person_info_4.csv' INTO TABLE person_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE name;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/name/name_1.csv' INTO TABLE name FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/name/name_2.csv' INTO TABLE name FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/name/name_3.csv' INTO TABLE name FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/name/name_4.csv' INTO TABLE name FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE char_name;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/char_name/char_name_1.csv' INTO TABLE char_name FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/char_name/char_name_2.csv' INTO TABLE char_name FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/char_name/char_name_3.csv' INTO TABLE char_name FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	TRUNCATE cast_info;
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_1.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_2.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_3.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_4.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_5.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_6.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_7.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_8.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_9.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_10.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_11.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_12.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_13.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_14.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_15.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_16.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_17.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_18.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_19.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
	LOAD DATA LOCAL INFILE '/root/job/jo-bench/csv/cast_info/cast_info_20.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\\' LINES TERMINATED BY '\n';
COMMIT;

-- Check size of large tables:
SELECT sum(size) FROM (
	SELECT count(*) AS size FROM movie_info
	UNION ALL
	SELECT count(*) AS size FROM title
	UNION ALL
	SELECT count(*) AS size FROM person_info
	UNION ALL
	SELECT count(*) AS size FROM name
	UNION ALL
	SELECT count(*) AS size FROM char_name
	UNION ALL
	SELECT count(*) AS size FROM cast_info
) AS q1;

/* sum: 63879870 */
-- VACUUM ANALYZE;

