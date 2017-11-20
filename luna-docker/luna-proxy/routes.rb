module Luna
	class Routes
		class << self
			#
			# Fetch routes to proxy request to from remote 
			# server based on hostname given
			#

			def fetch (env)
				
			end

			#
			# Return which route to use 
			#

			def route (env)
				# http://blog.siami.fr/diving-in-rails-the-request-handling
				# http://jmcglone.com
				'http://risingstars2016.netlify.com/$1'
			end

		end
	end
end