/* ストアド作成 */
CREATE OR REPLACE FUNCTION set_srid() RETURNS bool
AS $$
	DECLARE
	-- テーブル情報一覧を格納する変数
	all_table record;

	BEGIN
		-- usersテーブル内の全レコードについてループする
		-- publicスキーマのみに限定（必要に応じてWHERE句修正）
		FOR all_table IN ( SELECT * FROM pg_stat_user_tables as t WHERE t.schemaname = 'public') LOOP
			-- UPDATE文を文字列として構築し，実行
			BEGIN
				-- geomフィールドのSRIDを4301にセット（必要に応じてSRIDの数値を修正）
				EXECUTE
					'UPDATE ' || all_table.schemaname
					|| '."' || all_table.relname || '"'
					|| ' SET geom = ST_SetSRID(geom , 4301);'
					;
				-- geomフィールドが無い等のエラーの時はPass
				EXCEPTION
					WHEN OTHERS THEN
					NULL;
			END;
		END LOOP;
		-- 処理終了
		RETURN true;
	END;

$$ LANGUAGE plpgsql
;

/* ストアド実行 */
SELECT set_srid();