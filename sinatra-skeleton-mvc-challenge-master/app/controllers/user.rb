get '/users/register' do
  erb :"/users/register"
end

post '/users/new' do
  @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user
      redirect '/'
    else
      erb :"/users/register"
    end
end

get '/users/login' do
  erb :"/users/login"
end


post '/users/login' do
  p params[:user][:username]
  @user = User.find_by(username: params[:user][:username])
  p @user
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    erb :"/users/login"
  end
end

get '/users/logout' do
  session[:user_id] = nil
  redirect '/'
end

get '/users/:user_id' do
  erb :'/users/profile'
end
