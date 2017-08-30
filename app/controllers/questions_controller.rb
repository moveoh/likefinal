class QuestionsController < ApplicationController
  def new
  end

  def create
    q = Question.new
    q.name = params[:writer]
    q.content = params[:question]
    if q.save
    else
      #0번index만 가져오겠다
      render :text => q.errors.messages[:name][0] 
    end
    
    redirect_to "/questions/index"
  end

  def index
    @qs = Question.all
    @cs = Comment.all
  end
  
  def destroy
    one_question = Question.find(params[:question_id])
    one_question.destroy
    
    redirect_to "/questions/index"
  end
  
  def edit
    @one_question = Question.find(params[:question_id])
  end
  
  def update
    newq = Question.find(params[:question_id])
    newq.name=params[:writer_new]
    newq.content=params[:question_new]
    newq.save
    
    redirect_to "/questions/index"
  end
  
end
