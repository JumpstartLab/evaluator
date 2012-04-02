require 'spec_helper'

describe Evaluator::Parser::SectionBody, parser: true do
  let(:section_block) do
    Proc.new do
      free_response("Question 1") { kind   :text }
      pick_one("Question 2")      { option "foo" }
      free_response("Question 3", kind: :string)
    end
  end
  let(:section) { Section.new }
  let(:parser)  { Evaluator::Parser::SectionBody.new(section) }

  it "sets question display order by parse order" do
    parser.parse(&section_block)

    section.questions.find {|s| s.text =~ /1/}.display_order == 1
    section.questions.find {|s| s.text =~ /2/}.display_order == 2
  end

  it "sets question text" do
    texts = ["Question 1", "Question 2", "Question 3"]
    parser.parse(&section_block)

    section.questions.map(&:text).each do |text|
      text.should eql(texts.shift)
    end
  end

  describe "#free_response" do
    context "when passed kind inline" do
      it "creates a free response of that kind" do
        parser.parse(&section_block)

        free_response = section.questions.last
        free_response.answer.kind.should == :string
      end
    end
  end

end
