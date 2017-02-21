class VoteMailer < ActionMailer::Base
    default :from => "info@explorersedge.ca"

  def vote_confirmation(vote)
     @vote = vote
     @entry = @vote.entry
     mail(:to => "#{@vote.email} <#{@vote.email}>", :subject => "Vote Confirmation")
  end

end
