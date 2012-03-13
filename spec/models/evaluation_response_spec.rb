require 'spec_helper'

describe EvaluationResponse do
  describe "#submit" do
    context "when completed" do
      let(:response) { Factory(:completed_evaluation_response) }

      it "does not update the record" do
        last_saved = response.updated_at
        response.submit
        last_saved.should == response.reload.updated_at
      end
    end

    context "when not completed" do
      let(:response) { Factory(:submitted_evaluation_response) }

      it "sets submitted at" do
        submitted_at = response.submitted_at
        response.submit
        submitted_at.should_not == response.reload.submitted_at
      end

      it "saves associated objects in the attributes" do
        answer = response.answers.create
        expect do
          response.submit(answers_attributes: {"0"=>{"value"=>"abc", "id"=>"1"}})
        end.to change { answer.reload.value }
      end
    end
  end

end
