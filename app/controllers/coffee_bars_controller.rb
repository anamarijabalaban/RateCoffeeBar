class CoffeeBarsController < ApplicationController

def show
    @bar = CoffeeBar.find(params[:id])
end

def index
	@bars=CoffeeBar.all
end

def new
	@coffee_bar=CoffeeBar.new
end

def create
	@coffee_bar = CoffeeBar.new(bar_params)
 
  if @coffee_bar.save
    redirect_to @coffee_bar
  else
    render 'new'
  end
end

def bar_params
    params.require(:coffee_bar).permit(:name, :string, :address, :string)
  end


end
