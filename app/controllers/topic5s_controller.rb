class Topic5sController < ApplicationController
    def new
        @topic5 = Topic5.new
    end
  
    def show
        @topic5 = Topic5.find_by(id: params[:id])
    end
  
    def create
        @topic5 = Topic5.new(topic5_params)
        if @topic5.save
            flash[:notice] = "診断が完了しました"
            redirect_to topic5_path(@topic5.id)
        else
            redirect_to :action => "new"
        end
    end
    
    private
    def topic5_params
        params.require(:topic5).permit(:id, :question)
    end
end
