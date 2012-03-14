require 'spec_helper'

describe Feedback do
  describe "#give_from" do
    let(:person)   { Factory(:person) }
    let(:response) { Factory(:evaluation_response) }
    let(:feedback) { response.feedbacks.build(remarks: "Awesome!") }

    it "saves the record" do
      expect { feedback.give_from(person) }.to change { Feedback.count }.by(1)
    end

    it "sends a notice email" do
      feedback.give_from(person)
      ActionMailer::Base.deliveries.should_not be_empty
    end
  end
end
