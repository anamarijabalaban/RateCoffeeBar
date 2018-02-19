class CommentsController < ApplicationController
def create
    @bar = CoffeeBar.find(params[:coffee_bar_id])
    @comment = @bar.comments.create(comment_params)
    redirect_to coffee_bar_path(@bar)
  end
  
  def destroy
	@bar = CoffeeBar.find(params[:coffee_bar_id])
    @comment = @bar.comments.find(params[:id])
    @comment.destroy
    redirect_to coffee_bar_path(@bar)
  end
  
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
