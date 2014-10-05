enable :sessions

before '/user/:id' do
  @user = User.find_by(id: params[:id])
  session[:user_id] == @user.id ? @valid = true : @valid = false
end

get '/session' do
  erb :'users/login'
end

post '/session' do
  user = User.authenticate(params[:username], params[:password])

  if user == nil || user == false
    session[:error] = "Login Failed"
    redirect "/session"
  else
    session[:user_id] = user.id
    redirect "/user/#{current_user.id}"
  end
end

get '/user' do
  erb :'users/create_user'
end

get '/user/:id' do
  @runs = Run.all
  erb :'run_homepage'
end

post '/user' do
  user = User.new(params[:user])
  if user.valid?
    user.save
    redirect '/session'
  else
    redirect '/user'
  end
end

# delete '/session' do
#   session.clear
#   erb :index
# end

get '/logout' do
  session.clear
  redirect '/'
end

