post '/cups' do
  # pic = "img src="/images/flow_0.png""
  cc = current_user.cups.from_n_days_ago(0).length
  p "this is cc!!!!!!!!!!!!!"
  p  cc
  p picgetter(cc).class
  current_user.cups << Cup.new
  if request.xhr?
    if cc >=12
      {"picture" => picgetter(6), "count" => cc.to_s}.to_json
    elsif cc >=10
      {"picture" => picgetter(5), "count" => cc.to_s}.to_json
    elsif cc >=8
      {"picture" => picgetter(4), "count" => cc.to_s}.to_json
    elsif cc >=6
      {"picture" => picgetter(3), "count" => cc.to_s}.to_json
    elsif cc >=4
      {"picture" => picgetter(2), "count" => cc.to_s}.to_json
    elsif cc >=2
      {"picture" => picgetter(1), "count" => cc.to_s}.to_json
    elsif cc >=0
      {"picture" => picgetter(0), "count" => cc.to_s}.to_json
    else
      "sorry"
    end
    # erb :"_flower", layout: false
  else
    redirect "/users/#{current_user.id}"
  end
end
