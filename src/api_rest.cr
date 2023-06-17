require "kemal"

before_all "/json" do |env|
  puts "Setting response content type"
  env.response.content_type = "application/json"
end

get "/json" do |env|
  puts env.response.headers["Content-Type"] # => "application/json"
  {"name": "Kemal"}.to_json
end


get "/" do |response|
    "Tirando a maldição do Hello World"
end

Kemal.run