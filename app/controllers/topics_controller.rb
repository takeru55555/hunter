class TopicsController < ApplicationController
    def top
    end
    def new
      @topic = Topic.new
    end
  
    def show
      @topic = Topic.find_by(id: params[:id])
      @topic2 = Topic2.new
    end
  
    def create
      @topic = Topic.new(topic_params)
    #params[:topic][:question] ? @topic.question = params[:topic][:question].join("") : false
      if @topic.save
          flash[:notice] = "診断が完了しました"
          redirect_to topic_path(@topic.id)
      else
          redirect_to :action => "new"
      end
    end
  
  private
    def topic_params
        params.require(:topic).permit(:id, :question)
    end
  
end
