post '/cups' do
  cc = current_user.cups.from_n_days_ago(0).length
  current_user.cups << Cup.new
  if request.xhr?
    erb :"_flower", layout: false
  else
    redirect "/users/#{current_user.id}"
  end
end
