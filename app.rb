require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'hpricot'
require 'open-uri'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

get '/' do
  erb :home
end

get '/parse' do
	doc = Hpricot(open("http://images.earthkam.ucsd.edu/main.php?g2_itemId=142389"))

	@title = doc.at("p.giDescription/b").inner_html
	@image_url = doc.at("#gsImageView/img")['src']
	
	erb :data
end