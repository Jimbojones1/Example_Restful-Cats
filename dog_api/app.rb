require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => 'canines'
)

get '/' do

  doggies = Dog.create({:name => 'Franklin', :breed => 'Newfoundland', :age => 2, :picture => 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Newfoundland_dog_Smoky.jpg'}).to_json

end

get '/api/dogs' do

  Dog.all.to_json

end

get '/api/dogs/:id' do

  Dog.find(params[:id]).to_json

end

post '/api/dogs' do

  Dog.create({:name => params[:name], :breed => params[:breed], :age => params[:age], :picture => params[:picture]}).to_json

end

patch '/api/dogs/:id' do

  doggies_args = {:name => params[:name], :breed => params[:breed], :age => params[:age], :picture => params[:picture]}

  @doggies = Dog.find(params[:id])
  @doggies.update(doggies_args)
  @doggies.to_json

end

put '/api/dogs/:id' do

  doggies_args = {:name => params[:name], :breed => params[:breed], :age => params[:age], :picture => params[:picture]}

  @doggies = Dog.find(params[:id])
  @doggies.update(doggies_args)
  @doggies.to_json

end

delete '/api/dogs/:id' do

  Dog.destroy(params[:id]).to_json

end
