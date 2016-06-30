post '/cups' do
  current_user.cups << Cup.new
  if request.xhr?
    # {hash info}.to_json
    erb :"_flower", layout: false
  else
    redirect "/users/#{current_user.id}"
  end
end
