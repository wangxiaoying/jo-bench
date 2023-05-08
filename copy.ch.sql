--
-- COPY the Join Order Benchmark data FROM csv files into ClickHouse database.
--
SET format_csv_delimiter = ',';
SET format_csv_null_representation = '';
SET format_csv_allow_single_quotes = 'false'; 
SET format_csv_allow_double_quotes = 'true';
SET input_format_csv_empty_as_default = 'true';

TRUNCATE aka_title;
INSERT INTO aka_title FROM INFILE '/root/job/jo-bench/csv_ch/aka_title.csv' FORMAT CSV;
TRUNCATE aka_name;
INSERT INTO aka_name FROM INFILE '/root/job/jo-bench/csv_ch/aka_name.csv' FORMAT CSV;
TRUNCATE comp_cast_type;
INSERT INTO comp_cast_type FROM INFILE '/root/job/jo-bench/csv_ch/comp_cast_type.csv' FORMAT CSV;
TRUNCATE company_name;
INSERT INTO company_name FROM INFILE '/root/job/jo-bench/csv_ch/company_name.csv' FORMAT CSV;
TRUNCATE company_type;                                                                                                                            
INSERT INTO company_type FROM INFILE '/root/job/jo-bench/csv_ch/company_type.csv' FORMAT CSV;
TRUNCATE complete_cast;                                                                                                                           
INSERT INTO complete_cast FROM INFILE '/root/job/jo-bench/csv_ch/complete_cast.csv' FORMAT CSV;
TRUNCATE info_type;
INSERT INTO info_type FROM INFILE '/root/job/jo-bench/csv_ch/info_type.csv' FORMAT CSV;
TRUNCATE keyword;
INSERT INTO keyword FROM INFILE '/root/job/jo-bench/csv_ch/keyword.csv' FORMAT CSV;
TRUNCATE kind_type;
INSERT INTO kind_type FROM INFILE '/root/job/jo-bench/csv_ch/kind_type.csv' FORMAT CSV;
TRUNCATE link_type;                                                                                                                         
INSERT INTO link_type FROM INFILE '/root/job/jo-bench/csv_ch/link_type.csv' FORMAT CSV;
TRUNCATE movie_companies;
INSERT INTO movie_companies FROM INFILE '/root/job/jo-bench/csv_ch/movie_companies.csv' FORMAT CSV;
TRUNCATE movie_info_idx;
INSERT INTO movie_info_idx FROM INFILE '/root/job/jo-bench/csv_ch/movie_info_idx.csv' FORMAT CSV;
TRUNCATE movie_keyword;
INSERT INTO movie_keyword FROM INFILE '/root/job/jo-bench/csv_ch/movie_keyword.csv' FORMAT CSV;
TRUNCATE movie_link;
INSERT INTO movie_link FROM INFILE '/root/job/jo-bench/csv_ch/movie_link.csv' FORMAT CSV;
TRUNCATE role_type;
INSERT INTO role_type FROM INFILE '/root/job/jo-bench/csv_ch/role_type.csv' FORMAT CSV;

-- Copy large tables
TRUNCATE movie_info;
INSERT INTO movie_info FROM INFILE '/root/job/jo-bench/csv_ch/movie_info/movie_info_1.csv' FORMAT CSV;
INSERT INTO movie_info FROM INFILE '/root/job/jo-bench/csv_ch/movie_info/movie_info_2.csv' FORMAT CSV;
INSERT INTO movie_info FROM INFILE '/root/job/jo-bench/csv_ch/movie_info/movie_info_3.csv' FORMAT CSV;
INSERT INTO movie_info FROM INFILE '/root/job/jo-bench/csv_ch/movie_info/movie_info_4.csv' FORMAT CSV;
INSERT INTO movie_info FROM INFILE '/root/job/jo-bench/csv_ch/movie_info/movie_info_5.csv' FORMAT CSV;
INSERT INTO movie_info FROM INFILE '/root/job/jo-bench/csv_ch/movie_info/movie_info_6.csv' FORMAT CSV;
INSERT INTO movie_info FROM INFILE '/root/job/jo-bench/csv_ch/movie_info/movie_info_7.csv' FORMAT CSV;
INSERT INTO movie_info FROM INFILE '/root/job/jo-bench/csv_ch/movie_info/movie_info_8.csv' FORMAT CSV;
INSERT INTO movie_info FROM INFILE '/root/job/jo-bench/csv_ch/movie_info/movie_info_9.csv' FORMAT CSV;
INSERT INTO movie_info FROM INFILE '/root/job/jo-bench/csv_ch/movie_info/movie_info_10.csv' FORMAT CSV;
INSERT INTO movie_info FROM INFILE '/root/job/jo-bench/csv_ch/movie_info/movie_info_11.csv' FORMAT CSV;
INSERT INTO movie_info FROM INFILE '/root/job/jo-bench/csv_ch/movie_info/movie_info_12.csv' FORMAT CSV;
INSERT INTO movie_info FROM INFILE '/root/job/jo-bench/csv_ch/movie_info/movie_info_13.csv' FORMAT CSV;
INSERT INTO movie_info FROM INFILE '/root/job/jo-bench/csv_ch/movie_info/movie_info_14.csv' FORMAT CSV;
INSERT INTO movie_info FROM INFILE '/root/job/jo-bench/csv_ch/movie_info/movie_info_15.csv' FORMAT CSV;
TRUNCATE title;
INSERT INTO title FROM INFILE '/root/job/jo-bench/csv_ch/title/title_1.csv' FORMAT CSV;
INSERT INTO title FROM INFILE '/root/job/jo-bench/csv_ch/title/title_2.csv' FORMAT CSV;
TRUNCATE person_info;
INSERT INTO person_info FROM INFILE '/root/job/jo-bench/csv_ch/person_info/person_info_1.csv' FORMAT CSV;
INSERT INTO person_info FROM INFILE '/root/job/jo-bench/csv_ch/person_info/person_info_2.csv' FORMAT CSV;
INSERT INTO person_info FROM INFILE '/root/job/jo-bench/csv_ch/person_info/person_info_3.csv' FORMAT CSV;
INSERT INTO person_info FROM INFILE '/root/job/jo-bench/csv_ch/person_info/person_info_4.csv' FORMAT CSV;
TRUNCATE name;
INSERT INTO name FROM INFILE '/root/job/jo-bench/csv_ch/name/name_1.csv' FORMAT CSV;
INSERT INTO name FROM INFILE '/root/job/jo-bench/csv_ch/name/name_2.csv' FORMAT CSV;
INSERT INTO name FROM INFILE '/root/job/jo-bench/csv_ch/name/name_3.csv' FORMAT CSV;
INSERT INTO name FROM INFILE '/root/job/jo-bench/csv_ch/name/name_4.csv' FORMAT CSV;
TRUNCATE char_name;
INSERT INTO char_name FROM INFILE '/root/job/jo-bench/csv_ch/char_name/char_name_1.csv' FORMAT CSV;
INSERT INTO char_name FROM INFILE '/root/job/jo-bench/csv_ch/char_name/char_name_2.csv' FORMAT CSV;
INSERT INTO char_name FROM INFILE '/root/job/jo-bench/csv_ch/char_name/char_name_3.csv' FORMAT CSV;
TRUNCATE cast_info;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_1.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_2.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_3.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_4.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_5.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_6.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_7.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_8.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_9.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_10.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_11.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_12.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_13.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_14.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_15.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_16.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_17.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_18.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_19.csv' FORMAT CSV;
INSERT INTO cast_info FROM INFILE '/root/job/jo-bench/csv_ch/cast_info/cast_info_20.csv' FORMAT CSV;

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

