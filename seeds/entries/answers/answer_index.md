---

category_name: answer
title: 回答一覧の取得
method: index

---

# 回答一覧の取得

## 回答者の回答を一覧で取得します。

panel_id _(必須)_:
: __integer__
: 回答を取得したい回答者のid

~~~
定義
GET https://creativesurvey.com/api/v1/panels/:panel_id/answers

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/panels/3810/answers \
-u "auth_token=YourAuthToken":

レスポンス例
[
  {
    "panel_id": 3810,
    "id": 32997,
    "rank": null,
    "answer_type": 2,
    "answer_item_id": 4503,
    "question_id": 1920,
    "is_timeout": false,
    "value": "___unchecked___",
    "x": null,
    "y": null,
    "width": null,
    "height": null,
    "impression": null,
    "duration": 1748,
    "is_answered": true
  },
  {...},
  {...}
]

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
