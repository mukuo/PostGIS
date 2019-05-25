/* ストアド作成 */
CREATE OR REPLACE FUNCTION move_schema() RETURNS bool
AS $$
	DECLARE
	-- テーブル情報一覧を格納する変数
	all_table record;

	BEGIN
		-- usersテーブル内の全レコードについてループする
		-- publicスキーマのみに限定（必要に応じてWHERE句修正）
		FOR all_table IN ( SELECT * FROM pg_stat_user_tables AS t WHERE t.schemaname = 'public'
											AND ((t.relname like '%youto') OR (t.relname like '%text') OR (t.relname like '%road'))
		 ) LOOP
			-- UPDATE文を文字列として構築し，実行
			BEGIN
				-- geomフィールドのSRIDを4301にセット（必要に応じてSRIDの数値を修正）
				EXECUTE
					'ALTER TABLE ' || all_table.schemaname
					|| '."' || all_table.relname || '"'
					|| ' SET SCHEMA origin;'
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
SELECT move_schema();