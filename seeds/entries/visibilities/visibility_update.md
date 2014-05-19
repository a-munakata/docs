---

category_name: visibility
title: 表示ロジックの更新
method: update

---

# 表示ロジックの更新

## 表示ロジックを更新します。

visibility_id _(必須)_:
: __integer__
: 取得する分岐設定を含む質問のid

order_index:
: __integer__ _(デフォルト: null)_
: 表示ロジックの順序を0から始まる整数で指定します。

~~~
定義
GET https://creativesurvey.com/api/v1/visibilities/:visibility_id

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/visibilities/66 \
-d "visibility[order_index]=3" \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "updated_at": "2014-05-19T16:35:04+09:00",
  "question_id": 1911,
  "order_index": 3,
  "inbox_id": 6,
  "id": 66,
  "created_at": "2014-05-19T16:35:04+09:00"
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
