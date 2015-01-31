request = require 'request'
sendToAvos (svgEntry) ->
  request.post
    url: 'https://leancloud.cn/1.1/files/svg'
    headers:
      "X-AVOSCloud-Application-Id": "d6g1ucf8j84vfzzb1rc9z92inguvcfaof3d4jr67fyuow1pi"
      "X-AVOSCloud-Application-Key": "fecw1r5m1m56gpyoqds7gud3kii0lq2mmop9ibiwatfkriy2"
      "Content-Type": "image/svg+xml"
    body: data
    , (err,httpResponse,body) ->
      console.log err
      console.log httpResponse
      console.log body
