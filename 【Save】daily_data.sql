-- 集計開始日
CREATE TEMP FUNCTION FROM_DATE() AS(
  DATE("2015-01-01")
);

-- 集計終了日（前日）
CREATE TEMP FUNCTION TO_DATE() AS(
  DATE_SUB(CURRENT_DATE("Asia/Tokyo"), INTERVAL 1 day)
);

-- 連続した日付データを生成（使いやすい用にWITH句で作成）
WITH daily_data AS(
  SELECT
    date
  FROM
    UNNEST(GENERATE_DATE_ARRAY(FROM_DATE(), TO_DATE())) AS date
)

  SELECT
    *
  FROM
    daily_data
