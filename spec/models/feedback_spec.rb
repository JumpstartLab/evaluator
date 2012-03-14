require 'spec_helper'

describe Feedback do
  describe "#give" do
    let(:person)   { Factory(:person) }
    let(:response) { Factory(:evaluation_response) }
    let(:feedback) { Feedback.new(remarks: "Awesome!", evaluator: person, response: response) }

    it "saves the record" do
      expect { feedback.give }.to change { Feedback.count }.by(1)
    end

    it "sends a notice email" do
      feedback.give
      ActionMailer::Base.deliveries.should_not be_empty
    end
  end
end
