require './lib/application'
app = HttpInputEX::Application.new(
  host: "localhost",
  port: 5000,
  json_file: File.join(File.dirname(__FILE__),"json/sample.json")
)
# json
app.json '/j/test.http-ex.json'
app.json_list '/js/test.http-ex.json-list'
app.json_chunk '/js/test.http-ex.json-chunk'
# msgpack
app.msgpack '/m/test.http-ex.msgpack'
app.msgpack_list '/ms/test.http-ex.msgpack-list'
app.msgpack_chunk '/ms/test.http-ex.msgpack-chunk'
