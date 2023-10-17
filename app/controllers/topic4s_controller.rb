class Topic4sController < ApplicationController
    def new
        @topic4 = Topic4.new
    end
  
    def show
        @topic4 = Topic4.find_by(id: params[:id])
        @topic5 = Topic5.new
    end
  
    def create
        @topic4 = Topic4.new(topic4_params)
        #params[:topic4][:question] ? @topic4.question = params[:topic4][:question].join("") : false
        if @topic4.save
            flash[:notice] = "診断が完了しました"
            redirect_to topic4_path(@topic4.id)
        else
            redirect_to :action => "new"
        end
    end
    
    private
    def topic4_params
        params.require(:topic4).permit(:id, :question)
    end
end
