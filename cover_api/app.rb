require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'covers'
)

get '/' do

  cover = Songcover.create({ :originalartist => "Bob Dylan", :coverartist => "Jimi Hendrix", :song => "All along the Watch Tower"})
  cover.save
  cover.to_json
end

get  '/api/covers' do

  Songcover.all.to_json

end

get '/api/covers/:id' do

  puts params
  Songcover.find(params[:id]).to_json

end

post '/api/covers' do

  puts params
  Songcover.create({:originalartist => params[:originalartist], :coverartist => params[:coverartist], :song => params[:song]}).to_json

end

patch '/api/covers/:id' do

  song_cover_args = {:originalartist => params[:originalartist], :coverartist => params[:coverartist], :song => params[:song]}

  @cover = Songcover.find(params[:id])
  @cover.update(song_cover_args)
  @cover.to_json

end

put '/api/covers/:id' do

  song_cover_args = {:originalartist => params[:originalartist], :coverartist => params[:coverartist], :song => params[:song]}

  @cover = Songcover.find(params[:id])
  @cover.update(song_cover_args)
  @cover.to_json

end

delete '/api/covers/:id' do

  Songcover.destroy(params[:id]).to_to_json

end
