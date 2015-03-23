# Homepage (Root path)
get '/' do
  erb :index
end

get '/tracks' do
  @tracks = Track.all
  erb::'tracks/index'
end

post '/tracks' do
  @track = Track.new(
    track_title: params[:track_title],
    url: params[:url],
    author:  params[:author]
  )
  @track.save
  redirect '/tracks'
end