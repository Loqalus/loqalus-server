class Api::CommentsController < Api::BaseController

  respond_to :json


  def remove
  	@comment = Comment.find_by(id: params[:comment][:id])
    @comment.destroy
    render json: {  msg: "comment deleted"}
  end

  private
    def comment_params
      params.require(:comment).permit(:deletor, :id)
    end
end