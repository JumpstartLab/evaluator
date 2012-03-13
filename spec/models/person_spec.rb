require 'spec_helper'

describe Person do
  describe "#completed_response_for" do
    let(:person)     { Factory(:person) }


    context "when an evaluation response has been completed" do
      let!(:response)  { Factory(:completed_evaluation_response, person: person) }
      let(:evaluation) { response.evaluation }

      before { Factory(:evaluation_response, person: person) }

      it "returns a completed response for an evaluation" do
        person.completed_response_for(evaluation).should == response
      end
    end

    context "when one has not" do
      let!(:response)  { Factory(:evaluation_response, person: person) }
      let(:evaluation) { response.evaluation }

      it "returns nil" do
        person.completed_response_for(evaluation).should be_nil
      end
    end
  end
end
