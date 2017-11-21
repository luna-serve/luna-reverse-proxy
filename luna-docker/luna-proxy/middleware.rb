require File.expand_path('routes', File.dirname(__FILE__))
require 'awesome_print'

module Luna
	class Middleware
	  def initialize(app)
	  	Luna::Routes.ping
	    @app = app
	  end

	  #
    # Proxy request via reverse proxy
    #
    
	  def call(env)	    
	    proxy = Rack::ReverseProxy.new @app do
	    	# Set :preserve_host to true globally (default is true already)
			  reverse_proxy_options preserve_host: true, 
			  verify_mode: OpenSSL::SSL::VERIFY_NONE, 
			  	x_forwarded_headers: false

			  # Forward the path /test* to http://example.com/test*
			  #/^(.*)$/
			  reverse_proxy /^(.*)$/, Luna::Routes.route( env )
	    end

	    ap env
	    proxy.call(env)
	  end
	end
end