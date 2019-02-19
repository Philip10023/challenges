require 'sinatra'
require 'pry'
require 'csv'

set :bind, '0.0.0.0'  # bind to all interfaces

get '/' do
  redirect '/grocery-list'
end

get '/grocery-list' do
  @thelist = []
  CSV.foreach('grocery_list.csv', headers: true) do |name|
    @thelist << name
  end
  erb :index
end

post '/grocery-list' do
  Name = params[:Name]
  binding.pry
  if !Name.empty?
     CSV.open('grocery_list.csv', 'a', headers: true) do |csv|
       csv<< [Name]
    end
   end

  redirect '/grocery-list'

end
