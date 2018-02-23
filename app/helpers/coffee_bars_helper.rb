module CoffeeBarsHelper

def average_rating_for_bar(bar,ratingCaches)
	sum=0.0
	avgs=[]
	ratingCaches.each do |rating|
	  if rating.cacheable_id==bar.id
		avgs<<rating.avg 
	  end
	end
	
	avgs.each do |avg|
		sum+=avg
	end
	
	if avgs.length==0
		return 0.0
	else
		return (sum/avgs.length).round(1)
	end
end
end
