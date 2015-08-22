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
	@products = Product.order "price"
	erb :index
end

get '/about' do
	erb :about
end