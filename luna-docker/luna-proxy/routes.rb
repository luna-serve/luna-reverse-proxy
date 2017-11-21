require 'rest-client'
module Luna
	class Routes
		$api = 'http://example.com/'
		class << self
			#
			# Fetch routes to proxy request to from remote 
			# server based on hostname given
			#

			def fetch (env)
				json = RestClient.get $api +'v1/get_domain', { params: { host: env['HTTP_HOST'] } } rescue nil
				json = JSON.parse json
				json[:domain]
			end

			# 
			# Used to ping remote server of upstart
			# 

			def ping
				RestClient.get $api +'v1/upstart', { params: { keepalive: 1 } } rescue nil
			end

			#
			# Return which route to use 
			#

			def route (env)
				# http://blog.siami.fr/diving-in-rails-the-request-handling
				# http://jmcglone.com
				# fetch(env)
				'http://risingstars2016.netlify.com/$1'
			end

		end
	end
end