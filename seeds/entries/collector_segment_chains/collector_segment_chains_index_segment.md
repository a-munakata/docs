---

category_name: collector_segment_chain
title: 公開設定とセグメントの関連一覧の取得　(セグメント設定から)
method: index
parent_klass: segment

---

# 公開設定とセグメントの関連一覧の取得　(セグメント設定から)

## 公開設定とセグメントの関連を一覧で取得します。

segment_id _(必須)_:
: __integer__
: 対象となるセグメント設定id

~~~
定義
GET https://creativesurvey.com/api/v1/segments/:segment_id/collector_segment_chains

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/segments/116/collector_segment_chains \
-d "auth_token=YourAuthToken"

レスポンス例
[
  {
    "id": 5,
    "segment_id": 116,
    "collector_id": 528
  },
  {...},
  {...}
]

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