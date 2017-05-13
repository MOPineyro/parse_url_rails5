**URL Parser API**
----

This API does the following:
- Stores h1, h2, h3 and link content of a given URL
- Returns a list of previously stored url & their content

* **URL**
/parsed_url

* **Method:**
`GET`
* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{
    "id": 1,
    "url": "http://test.global",
    "h1_tags": [
      "Motion"
    ],
    "h2_tags": [],
    "h3_tags": [
      "Success Guaranteed",
      "Testimonials"
    ],
    "links": [
      "https://www.facebook.com/limlessons",
      "https://instagram.com/languageinmotion/",
      "https://twitter.com/limlessons",
    ],
    "created_at": "2017-05-13T21:29:28.876Z",
    "updated_at": "2017-05-13T21:29:28.876Z"
  }`

* **Sample Call:**
curl -X GET \
  http://localhost:3000/parsed_urls \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -H 'postman-token: 4854c070-5354-a02b-491a-63ccd0233ea6'

* **Method:**
`POST`
* **Data Params**
{
    "parsed_url": {"url": "http://google.com"}
}

* **Success Response:**
  * **Code:** 201 Created <br />
    **Content:** `{"id":4,"url":"http://google.com","h1_tags":[],"h2_tags":[],"h3_tags":[],"links":["http://www.google.com/imghp?hl=en\u0026tab=wi","http://maps.google.com/maps?hl=en\u0026tab=wl","https://play.google.com/?hl=en\u0026tab=w8","http://www.youtube.com/?tab=w1","http://news.google.com/nwshp?hl=en\u0026tab=wn","https://mail.google.com/mail/?tab=wm","https://drive.google.com/?tab=wo","https://www.google.com/intl/en/options/","http://www.google.com/history/optout?hl=en","/preferences?hl=en","https://accounts.google.com/ServiceLogin?hl=en\u0026passive=true\u0026continue=http://www.google.com/","/advanced_search?hl=en\u0026authuser=0","/language_tools?hl=en\u0026authuser=0","/intl/en/ads/","/services/","https://plus.google.com/116899029375914044550","/intl/en/about.html","/intl/en/policies/privacy/","/intl/en/policies/terms/"],"created_at":"2017-05-13T21:59:48.790Z","updated_at":"2017-05-13T21:59:48.790Z"}`

* **Sample Call:**
curl -X POST \
  http://localhost:3000/parsed_urls \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -H 'postman-token: 4bb2b296-2064-02d6-12f8-872c659bfca2' \
  -d '{
    "parsed_url": {"url": "http://google.com"}
}'