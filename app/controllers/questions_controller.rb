class QuestionsController < ApplicationController
  def answer
    @question = params[:question]
    @respuesta = buscar_respuesta(@question)
  end

  def ask

  end

  def buscar_respuesta(question)
    if question.downcase == "i am going to work"
      'Great!'
    elsif question.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
