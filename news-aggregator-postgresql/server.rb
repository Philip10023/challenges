require "sinatra"
require "pg"
require_relative "./app/models/article"

set :bind, '0.0.0.0'  # bind to all interfaces
set :views, File.join(File.dirname(__FILE__), "app", "views")

configure :development do
  set :db_config, { dbname: "news_aggregator_development" }
end

configure :test do
  set :db_config, { dbname: "news_aggregator_test" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end

# Put your News Aggregator server.rb route code here
get "/" do
  redirect "/articles"
end
db_connection do 
get "/articles" do
  @article = File.readlines("layout.erb")
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

news_aggregator_development = nil

db_connection do |conn|
  news_aggregator_development = conn.exec("INPUT name TO articles")
end

news_aggregator_development.to_a.each do |article|
  puts article["name"]
end

post "/articles/new" do
  #binding.pry
  name = exec_params[:articles]
  url = exec_params[:url]
  description = exec_params[:description]
  summary = name + ",," + url + ",," + description
  File.open("news_aggregator_development", "a") do |file|
    file << summary
  end
redirect "/articles"
erb :name

end
