/*
  ◾️概要
    クエリ内で条件指定を行う際に利用する
*/

-- ユーザー定義関数を使用して特定条件に絞り込み
CREATE TEMP FUNCTION SPECIFIC_USER_ID() AS(
  10879267
);

-- ユーザー定義関数を使用して特定条件に絞り込み
-- 複数の条件のうちどれかに一致すればいい（OR条件）であれば以下のように配列を使用できる
CREATE TEMP FUNCTION SPECIFIC_IDS() AS (
  [
    11940484, 11931170, 11945223, 11948508, 11952826
  ]
);


SELECT
  *
FROM
  xxx
WHERE
  id IN UNNEST(SPECIFIC_IDS())
  OR user_id IN (SPECIFIC_USER_ID())