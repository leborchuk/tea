-- start_ignore
CREATE EXTENSION IF NOT EXISTS tea;
-- end_ignore

CREATE READABLE EXTERNAL TABLE tea_ext_empty_probe_ext (a bigint)
LOCATION ('tea://special://empty')
FORMAT 'custom' (formatter = tea_import);

SELECT count(*)::int AS rows_read
FROM tea_fdw_empty_probe_ext;

DROP FOREIGN TABLE tea_fdw_empty_probe_ext;
