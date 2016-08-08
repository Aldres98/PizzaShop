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

get '/pizza/:id' do
	@pizza = Product.find(params[:id])
	erb :pizzapage
end

post '/cart' do
	orders_input = params[:orders]
	@orders = parse_orders_input orders_input
    erb "Hello! #{@orders.inspect}"
end

def parse_orders_input orders_input

    s1 = orders_input.split(/,/)

    arr=[]


    s1.each do |x|
    	s2 = x.split(/\=/)

    	s3 = s2[0].split(/_/)

    	id = s3[1]
    	cnt = s2[1]

        arr2 = [id, cnt]

        arr << arr2

    end
    return arr
end
