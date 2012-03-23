require 'spec_helper'

describe Evaluator::Parser::QuestionBody, parser: true do
  let(:question_block) do
    Proc.new do
     question("Question 1") { free_response :text }
     question("Question 2") { pick(:any, &Proc.new{}) }
    end
  end
  let(:section) { Section.new }
  let(:parser)  { Evaluator::Parser::QuestionBody.new(section) }

  it "builds questions" do
    parser.parse(&question_block)
    section.questions.should have(2).questions
  end

  it "sets question text" do
    texts = ["Question 1", "Question 2"]
    parser.parse(&question_block)

    section.questions.map(&:text).each do |text|
      text.should eql(texts.shift)
    end
  end

  it "sets question display order by parse order" do
    parser.parse(&question_block)

    section.questions.find {|q| q.text =~ /1/}.display_order == 1
    section.questions.find {|q| q.text =~ /2/}.display_order == 2
  end

end
