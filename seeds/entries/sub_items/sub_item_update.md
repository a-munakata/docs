---

category_name: sub_item
title: 回答補助項目の更新
method: update

---

# 回答補助項目の更新

## 回答項目の補助項目を更新します。

sub_item_id _(必須)_:
: __integer__
: 更新する回答項目を含む質問のid

sentence:
: __string__ _(デフォルト: "")_
: 回答項目の文言

order_index:
: __integer__ _(デフォルト: 0)_
: 回答補助項目の順序を0から始まる整数で指定します。

min_value:
: __integer__ _(デフォルト: null)_
: 回答項目の最小選択数

max_value:
: __integer__ _(デフォルト: null)_
: 回答項目の最大選択数

~~~
定義
PUT https://creativesurvey.com/api/v1/sub_items/:sub_item_id

リクエスト例
$ curl -X PUT https://creativesurvey.com/api/v1/sub_items/2731 \
-d "auth_token=YourAuthToken" \
-d "sub_item[order_index]=5" \
-d "sub_item[sentence]=Q2"


レスポンス例
{
  "updated_at": "2014-04-23T11:04:32+09:00",
  "sentence": "Q2",
  "placeholder": "",
  "order_index": 5,
  "answer_type": 11,
  "attachable_id": 1839,
  "attachable_type": "Question",
  "created_at": "2014-04-23T10:39:33+09:00",
  "id": 2731,
  "inbox_id": 6,
  "max_value": null,
  "min_value": null
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
