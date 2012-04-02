require 'spec_helper'

describe Evaluator::Parser::FreeResponseBody, parser: true do
  let(:free_response_block) do
    Proc.new do
      kind(:text)
    end
  end
  let(:fill_in) { FillIn.new }
  let(:parser)  { Evaluator::Parser::FreeResponseBody.new(fill_in) }

  it "builds free response answers" do
    parser.parse(&free_response_block)
    fill_in.answers.should have(1).answer
  end

  context "when intialized with a FreeResponse kind" do
    let!(:parser)  { Evaluator::Parser::FreeResponseBody.new(fill_in, :string) }

    it "creates a FreeResponse answer on initialization" do
      fill_in.answers.should have(1).answer
      fill_in.answer.kind.should == :string
    end

    context "when also parsing a block" do
      it "defers to the kind given in the block" do
        parser.parse(&free_response_block)
        fill_in.answer.kind.should == :text
      end
    end

  end

end
