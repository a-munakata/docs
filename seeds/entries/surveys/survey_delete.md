---

category_name: survey
title: アンケートの削除
method: delete

---

# アンケートの削除

## アンケートを削除します。

survey_id _(必須)_:
: __integer__
: 削除するアンケートのid

~~~
定義
DELETE http://creativesurvey.com/api/v1/surveys/:survey_id

リクエスト例
$ curl -X DELETE http://creativesurvey.com/api/v1/surveys/514 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "updated_at": "2014-05-08T17:32:20+09:00",
  "tag_color": "red",
  "statistic_make_at": null,
  "questions_count": 0,
  "published_at": null,
  "public_token": "1153bc8d38b5bbb0b2ce2247cdcae9c48ca0457c",
  "preview_count": 0,
  "is_deleted": false,
  "inbox_id": 6,
  "id": 533,
  "gift_count": 0,
  "gift_code": null,
  "edit_count": 0,
  "created_at": "2014-05-08T17:32:20+09:00",
  "active_segment_id": null,
  "is_duplicating": false,
  "is_gift": false,
  "is_processing_statistic": null,
  "is_public": null,
  "is_published": false,
  "name": "sample_survey",
  "panels_count": null,
  "password": null
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
