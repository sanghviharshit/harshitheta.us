class HarshitAndHeta < Sinatra::Base
  PREFERRED_HOST = 'harshitheta.us'.freeze
  WEDDING_DATE = Date.parse('2013-11-19').freeze

  if ENV['RACK_ENV'] == 'production'
    before do
      if request.host != PREFERRED_HOST
        redirect to("http://#{PREFERRED_HOST + request.path_info}")
      end
    end
  end

  get '/' do
    # @days = (WEDDING_DATE - Date.today).to_i
    erb :index
  end
end
