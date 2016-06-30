post '/cups' do
  current_user.cups << Cup.new
  redirect "/users/#{current_user.id}"
end
