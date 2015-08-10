require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib./**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  length = params.fetch("length").to_i()
  width = params.fetch("width").to_i()
  height = params.fetch("height").to_i()
  distance = params.fetch("distance").to_i()
  weight = params.fetch("weight").to_i()
  speed = params.fetch("speed")
  test_parcel = Parcel.new(length, width, height)
  @final_shipping_cost = test_parcel.cost_to_ship(distance, weight, speed)
  erb(:result)
end
