require "sinatra"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/tasks" do
  @tasks = ["pay bills", "buy milk", "learn Ruby"]
  erb :index
end

get "/tasks/:task_name" do
  @task_name = params[:task_name]
  erb :show
end


get "/hello" do
  "<p>Hello, world! The current time is #{Time.now}.</p>"
end

get "/tasks" do
  tasks = ["pay bills", "buy milk", "learn Ruby"]

  html = '''
  <!DOCTYPE html>
  <html>
    <head>
      <title>Basic HTML Page</title>
      <link rel="stylesheet" href="home.css">
    </head>

    <body>
      <h1>TODO list</h1>
      <ul>
  '''

  tasks.each do |task|
    html += "<li>#{task}</li>"
  end

  html += '''
      </ul>
    </body>
  </html>
  '''
end
