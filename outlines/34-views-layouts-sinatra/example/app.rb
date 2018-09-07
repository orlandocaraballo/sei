require 'sinatra'
require 'pry-byebug'

def initialize
  super

  # will allow names to be used in all templates
  @names = %w{ orlando garth rich marlon diana }
end

get '/' do
  erb(:list_names, locals: { names: ['diana', 'marlon'] })
end

get '/list-addresses' do
  erb(:list_addresses, locals: { addresses: ['123 Main St', '252 Dump Town'] })
end

get '/list-names-addresses' do
  erb(:list_names_addresses)
end

get '/users' do
  erb(:users)
end

get '/for-marlon' do
  @here_you_go_bro = 'some stuff'

  binding.pry

  erb :for_marlon
end

get '/diana' do
  # erb(:diana, {
  #   locals: { 
  #     the_best: 'diana'
  #   }
  # })

  erb :diana, { locals: { the_best: 'diana' }, layout: :diana_layout }
end

get '/main.css' do
  scss(:main)
end

get '/form' do
  # do some searching

  erb(:form, locals: { query: params[:query] })
end