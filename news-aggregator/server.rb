require 'sinatra'
require 'csv'
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

get "/articles" do
  @article = File.readlines("news.csv")
  articlesarr = []
  @article.each do |item|
    new_item = item.split(',,')
    articlesarr<<new_item
end
@all_art = articlesarr
erb :index
end
get "/articles/new" do
  erb :news
end

get "/articles" do
  erb :index
end

post "/articles/new" do
  #binding.pry
  name = params[:articles]
  url = params[:url]
  description = params[:description]
  summary = name + ",," + url + ",," + description
  File.open("news.csv", "a") do |file|
    file << summary
  end
redirect "/articles"
erb :name

end
