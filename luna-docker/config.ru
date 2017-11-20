require File.expand_path('luna-proxy/middleware', File.dirname(__FILE__))
require 'rack/reverse_proxy'

use Luna::Middleware

app = proc do |env|
  [ 200, {'Content-Type' => 'text/plain'}, ["b"] ]
end
run app