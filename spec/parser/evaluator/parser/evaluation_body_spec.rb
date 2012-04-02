require 'spec_helper'

describe Evaluator::Parser::EvaluationBody, parser: true do
  let(:section_block) do
    Proc.new do
      section "Section 1" do
       free_response("Question 1") { kind    :text }
       pick_any("Question 2")      { option "banana" }
      end
      section "Section 2" do
      end
    end
  end
  let(:evaluation) { Evaluation.new }
  let(:parser)     { Evaluator::Parser::EvaluationBody.new(evaluation) }

  it "sets section display order by parse order" do
    parser.parse(&section_block)

    evaluation.sections.find {|s| s.title =~ /1/}.display_order == 1
    evaluation.sections.find {|s| s.title =~ /2/}.display_order == 2
  end
end

