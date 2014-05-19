---

category_name: randomizer
title: ランダム設定の取得
method: show

---

# ランダム設定の取得

## アンケートに指定されたランダム設定を個別で取得します。

randomizers_id _(必須)_:
: __integer__
: ランダム設定のid

~~~
定義
GET https://creativesurvey.com/api/v1/randomizers/:randomizers_id

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/randomizers/36 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "updated_at": "2014-04-22T11:41:12+09:00",
  "step_num": 1,
  "created_at": "2014-04-22T11:41:01+09:00",
  "end_index": 1,
  "id": 36,
  "inbox_id": 6,
  "is_valid": true,
  "order_index": 0,
  "questionnaire_id": 508,
  "start_index": 0
}

リソースが存在しない場合
{
  "message": "resource not found"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
