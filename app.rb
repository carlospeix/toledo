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
	root_url = "http://images.earthkam.ucsd.edu/"

	doc = Hpricot(open("#{root_url}main.php?g2_itemId=142389"))

	@title = doc.at("p.giDescription/b").inner_html
	@image_url = root_url + doc.at("#gsImageView/img")['src']
	@kml_url = doc.at("td.download_icon/a")['href']

	erb :data
end