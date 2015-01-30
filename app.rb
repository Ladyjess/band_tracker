require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get('/') do
  erb(:index)
end

get('/bands') do
  @bands = Band.all()
  @venues = Venue.all()
  erb(:band)
end

post("/bands") do
  band_name = params.fetch("band_name")
  # venue_name = params.fetch("venue_name")
  band = Band.create({ :name => band_name})
  # venue = Venue.create({ :name => venue_name})
  # venue = Venue.find(params.fetch("venue_id").to_i())
  # band.venues().push(venue)
  redirect("/bands")
end
