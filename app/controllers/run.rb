post '/user/:id/run/create' do
  #p params -- to see what the values i'm outputting are
  #==> {"time"=>"2014-10-06", "location"=>"central park", "splat"=>[], "captures"=>[":id"], "id"=>":id"}

  @user = User.find(session[:id])
  @run = Run.create(time: params[:time], location: params[:location])

  # redirect '/user/#{@user.id}'

end
