%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "abbreviation": "GMT",
  "client_ip": "62.17.146.144",
  "datetime": "2021-01-07T15:45:26.768112+00:00",
  "day_of_week": 4,
  "day_of_year": 7,
  "dst": false,
  "dst_from": null,
  "dst_offset": -3600,
  "dst_until": null,
  "raw_offset": 3600,
  "timezone": "Europe/Dublin",
  "unixtime": 1610034326,
  "utc_datetime": "2021-01-07T15:45:26.768112+00:00",
  "utc_offset": "+00:00",
  "week_number": 1
})