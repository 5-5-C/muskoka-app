class QuizMailer < ApplicationMailer

  default :from => "contest@shareyourcanada150.ca"

  def quiz_confirmation(quiz)
     @quiz = quiz
     @entry = @quiz.entry
     mail(:to => "#{@quiz.email} <#{@quiz.email}>", :subject => "Vote Confirmation")
  end


end
