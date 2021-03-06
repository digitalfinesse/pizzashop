require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'sqlite3'


set :database, "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base

end

before do
	@products = Product.all
end

get '/' do
	@products = Product.order "price DESC"
	erb :index
end

get '/about' do
	erb :about
end

get '/pizza/:id' do
	@products = Product.find params[:id]
	@p = @products
	erb :pizza
end

get '/contacts' do
  erb :contacts
end

post '/cart' do
  erb ""
end