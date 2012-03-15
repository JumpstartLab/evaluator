class PeopleMailer < ActionMailer::Base
  default from: "matt@jumpstartlab.com"

  def feedback(feedback)
    @recipient_name  = feedback.recipient.casual_name
    @evaluator_name  = feedback.evaluator.full_name
    @feedback_target = feedback.target_title
    @remarks         = feedback.remarks
    @evaluation      = feedback.response

    mail to: feedback.recipient.email, subject: "New feedback on #{@feedback_target}"
  end
end
