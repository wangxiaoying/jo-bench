-- COPY the Join Order Benchmark data FROM csv files into a DuckDB database.
-- Usage: ./build/release/duckdb dbs/imdb.duckdb < /data/wangxiaoying/jo-bench/copy.duckdb.sql

BEGIN;
	TRUNCATE aka_title;
	COPY aka_title FROM '/data/wangxiaoying/jo-bench/csv/aka_title.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE aka_name;
	COPY aka_name FROM '/data/wangxiaoying/jo-bench/csv/aka_name.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE comp_cast_type;
	COPY comp_cast_type FROM '/data/wangxiaoying/jo-bench/csv/comp_cast_type.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE company_name;
	COPY company_name FROM '/data/wangxiaoying/jo-bench/csv/company_name.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE company_type;
	COPY company_type FROM '/data/wangxiaoying/jo-bench/csv/company_type.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE complete_cast;
	COPY complete_cast FROM '/data/wangxiaoying/jo-bench/csv/complete_cast.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE info_type;
	COPY info_type FROM '/data/wangxiaoying/jo-bench/csv/info_type.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE keyword;
	COPY keyword FROM '/data/wangxiaoying/jo-bench/csv/keyword.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE kind_type;
	COPY kind_type FROM '/data/wangxiaoying/jo-bench/csv/kind_type.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE link_type;
	COPY link_type FROM '/data/wangxiaoying/jo-bench/csv/link_type.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE movie_companies;
	COPY movie_companies FROM '/data/wangxiaoying/jo-bench/csv/movie_companies.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE movie_info_idx;
	COPY movie_info_idx FROM '/data/wangxiaoying/jo-bench/csv/movie_info_idx.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE movie_keyword;
	COPY movie_keyword FROM '/data/wangxiaoying/jo-bench/csv/movie_keyword.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE movie_link;
	COPY movie_link FROM '/data/wangxiaoying/jo-bench/csv/movie_link.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE role_type;
	COPY role_type FROM '/data/wangxiaoying/jo-bench/csv/role_type.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');

	-- Copy large tables
	TRUNCATE movie_info;
	COPY movie_info FROM '/data/wangxiaoying/jo-bench/csv/movie_info/movie_info_1.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY movie_info FROM '/data/wangxiaoying/jo-bench/csv/movie_info/movie_info_2.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY movie_info FROM '/data/wangxiaoying/jo-bench/csv/movie_info/movie_info_3.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY movie_info FROM '/data/wangxiaoying/jo-bench/csv/movie_info/movie_info_4.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY movie_info FROM '/data/wangxiaoying/jo-bench/csv/movie_info/movie_info_5.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY movie_info FROM '/data/wangxiaoying/jo-bench/csv/movie_info/movie_info_6.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY movie_info FROM '/data/wangxiaoying/jo-bench/csv/movie_info/movie_info_7.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY movie_info FROM '/data/wangxiaoying/jo-bench/csv/movie_info/movie_info_8.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY movie_info FROM '/data/wangxiaoying/jo-bench/csv/movie_info/movie_info_9.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY movie_info FROM '/data/wangxiaoying/jo-bench/csv/movie_info/movie_info_10.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY movie_info FROM '/data/wangxiaoying/jo-bench/csv/movie_info/movie_info_11.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY movie_info FROM '/data/wangxiaoying/jo-bench/csv/movie_info/movie_info_12.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY movie_info FROM '/data/wangxiaoying/jo-bench/csv/movie_info/movie_info_13.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY movie_info FROM '/data/wangxiaoying/jo-bench/csv/movie_info/movie_info_14.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY movie_info FROM '/data/wangxiaoying/jo-bench/csv/movie_info/movie_info_15.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE title;
	COPY title FROM '/data/wangxiaoying/jo-bench/csv/title/title_1.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY title FROM '/data/wangxiaoying/jo-bench/csv/title/title_2.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE person_info;
	COPY person_info FROM '/data/wangxiaoying/jo-bench/csv/person_info/person_info_1.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY person_info FROM '/data/wangxiaoying/jo-bench/csv/person_info/person_info_2.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY person_info FROM '/data/wangxiaoying/jo-bench/csv/person_info/person_info_3.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY person_info FROM '/data/wangxiaoying/jo-bench/csv/person_info/person_info_4.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE name;
	COPY name FROM '/data/wangxiaoying/jo-bench/csv/name/name_1.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY name FROM '/data/wangxiaoying/jo-bench/csv/name/name_2.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY name FROM '/data/wangxiaoying/jo-bench/csv/name/name_3.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY name FROM '/data/wangxiaoying/jo-bench/csv/name/name_4.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE char_name;
	COPY char_name FROM '/data/wangxiaoying/jo-bench/csv/char_name/char_name_1.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY char_name FROM '/data/wangxiaoying/jo-bench/csv/char_name/char_name_2.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY char_name FROM '/data/wangxiaoying/jo-bench/csv/char_name/char_name_3.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	TRUNCATE cast_info;
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_1.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_2.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_3.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_4.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_5.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_6.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_7.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_8.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_9.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_10.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_11.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_12.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_13.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_14.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_15.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_16.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_17.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_18.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_19.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
	COPY cast_info FROM '/data/wangxiaoying/jo-bench/csv/cast_info/cast_info_20.csv' (FORMAT CSV, HEADER false, DELIMITER ',', QUOTE '"', ESCAPE '\', NULLSTR '');
COMMIT;

-- Check size of large tables:
SELECT sum(size) FROM (
	SELECT count(*) AS size FROM movie_info UNION ALL
	SELECT count(*) AS size FROM title UNION ALL
	SELECT count(*) AS size FROM person_info UNION ALL
	SELECT count(*) AS size FROM name UNION ALL
	SELECT count(*) AS size FROM char_name UNION ALL
	SELECT count(*) AS size FROM cast_info
) AS q1;
