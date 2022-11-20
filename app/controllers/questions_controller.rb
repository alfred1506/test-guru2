class QuestionController < ApplicationController
  def index
    render json: { questions: @test.question}
  end

  def show
    render json: { questions: @question }
  end

  def create
    if @test.questions.create(question_params)
      redirect_to test_questions_path
    else
      render :new
    end
  end

  def new
  end

  def destroy
    @questions.delete
    render plain: 'Вопрос удален!'
  end

  def question_params
    params.require(:questions).permit(:body)
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def rescue_with_question_not_found
    render plain: 'Question not found'
  end
end
