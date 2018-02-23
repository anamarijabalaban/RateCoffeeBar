class CoffeeBarsController < ApplicationController

def show
    @bar = CoffeeBar.find(params[:id])
end

def index
	@bars=CoffeeBar.all
	@ratingCaches=RatingCache.all
end

def new
	@coffee_bar=CoffeeBar.new
end

def create
	@coffee_bar = CoffeeBar.new(bar_params)
 
  if @coffee_bar.save
    redirect_to coffee_bars_path
  else
    render 'new'
  end
end

def edit
	@coffee_bar=CoffeeBar.find(params[:id])
end

def update
  @coffee_bar = CoffeeBar.find(params[:id])
 
  if @coffee_bar.update(bar_params)
    redirect_to coffee_bars_path
  else
    render 'edit'
  end
end

def destroy
  @coffee_bar = CoffeeBar.find(params[:id])
  @coffee_bar.destroy
 
  redirect_to coffee_bars_path
end

def bar_params
    params.require(:coffee_bar).permit(:name, :string, :address, :string, :info, :text)
  end


end
