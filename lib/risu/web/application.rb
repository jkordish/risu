module Risu
	module Web
		class Application < Sinatra::Base
			set :bind, 'localhost'
			set :port, 8969
			set :haml, :format => :html5
			set :environment, :production
			puts "Risu Web Interface at http://localhost:8969/"

			get '/' do	
				haml :index
			end

			get '/hosts' do
				haml :hosts
			end

			get '/host/:id' do
				@host = Host.find(params[:id])
				haml :host, :layout => :layout
			end

			get '/reports' do
				haml :reports
			end

			get '/report/:id' do
				@report = Host.find(params[:id])
				haml :report
			end

			get '/items' do
				haml :items
			end
			
			get '/plugins' do
				haml :plugins
			end
		end
	end
end
