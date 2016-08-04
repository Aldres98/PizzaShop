#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base
end

before do 
 @products = Product.all
end

get '/' do
	erb :index
end

get '/about' do
	erb :about
end

get '/new' do
	@new_pizza = Product.new 
	erb :new
	
end

post '/new' do
	@new_pizza = Product.new params[:product]
	if @new_pizza.save
		erb "<h2>New pizza succesfully added!</h2>"
	else
		@error = @new_pizze.full_messages.first
		erb :new
	end
end