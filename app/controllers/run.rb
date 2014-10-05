post '/user/:id/run/create' do
  #p params -- to see what the values i'm outputting are
  #==> {"time"=>"2014-10-06", "location"=>"central park", "splat"=>[], "captures"=>[":id"], "id"=>":id"}

  @user = User.find(session[:user_id])
  @run = Run.create(time: params[:time], location: params[:location])
  @plan = Plan.create(user_id: @user.id, run_id: @run.id)


  response = erb :'_run', layout: false

  return response
  #for js file

  # redirect '/user/#{@user.id}'

end
