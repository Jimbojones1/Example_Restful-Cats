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

get  '/api/cats' do

  Songcover.all.to_json

end
