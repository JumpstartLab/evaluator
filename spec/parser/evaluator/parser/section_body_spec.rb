require 'spec_helper'

describe Evaluator::Parser::SectionBody, parser: true do
  let(:section_block) do
    Proc.new do
      section "Section 1" do
       question("Question 1") { free_response :text }
       question("Question 2") { free_response :text }
      end
      section "Section 2" do
      end
    end
  end
  let(:evaluation) { Evaluation.new }
  let(:parser)     { Evaluator::Parser::SectionBody.new(evaluation) }

  it "sets section display order by parse order" do
    parser.parse(&section_block)

    evaluation.sections.find {|s| s.title =~ /1/}.display_order == 1
    evaluation.sections.find {|s| s.title =~ /2/}.display_order == 2
  end

end
