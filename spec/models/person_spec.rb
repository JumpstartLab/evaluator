require 'spec_helper'

describe Person do

  describe "#to_s" do
    context "when the person's first and last name are blank" do
      it "is their GitHub handle" do
        person = Person.new
        person.github_handle = "foobar"
        person.to_s.should eql("foobar")
      end
    end
  end

  describe "#response_for" do
    let(:person)     { Factory(:person) }

    context "when an evaluation has been responded to" do
      let!(:response)  { Factory(:evaluation_response, evaluator: person) }
      let(:evaluation) { response.evaluation }

      it "returns a response for the evaluation" do
        person.response_for(evaluation).should == response
      end
    end

    context "when none has" do
      let(:evaluation) { Factory(:evaluation) }

      it "returns nil" do
        person.response_for(evaluation).should be_nil
      end
    end
  end

  describe "#completed_response_for" do
    let(:person)     { Factory(:person) }

    context "when an evaluation response has been completed" do
      let!(:response)  { Factory(:completed_evaluation_response, evaluator: person) }
      let(:evaluation) { response.evaluation }

      before { Factory(:evaluation_response, evaluator: person) }

      it "returns a completed response for an evaluation" do
        person.completed_response_for(evaluation).should == response
      end
    end

    context "when one has not" do
      let!(:response)  { Factory(:evaluation_response, evaluator: person) }
      let(:evaluation) { response.evaluation }

      it "returns nil" do
        person.completed_response_for(evaluation).should be_nil
      end
    end
  end
end
