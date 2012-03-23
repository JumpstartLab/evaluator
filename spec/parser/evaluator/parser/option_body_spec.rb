require 'spec_helper'

describe Evaluator::Parser::OptionBody, parser: true do
  let(:option_block) do
    Proc.new do
     option "Yes"
     option "No"
     option "Maybe"
    end
  end
  let(:question) { Question.new }
  let(:parser)   { Evaluator::Parser::OptionBody.new(question) }

  it "sets option text" do
    texts = ["Yes", "No", "Maybe"]
    parser.parse(&option_block)

    question.answers.map(&:text).each do |text|
      text.should eql(texts.shift)
    end
  end

  it "sets option display order by parse order" do
    parser.parse(&option_block)

    question.answers.find {|o| o.text =~ /Yes/}.display_order   == 1
    question.answers.find {|o| o.text =~ /No/}.display_order    == 2
    question.answers.find {|o| o.text =~ /Maybe/}.display_order == 3
  end

end
