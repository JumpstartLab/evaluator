require 'spec_helper'

describe Evaluator::Parser, parser: true do
  let(:text) do
    <<-SRC
      evaluation "Example Evaluation" do
        section "Foo" do
        end
        section "Bar" do
        end
      end
    SRC
  end
  let(:parser) { Evaluator::Parser.new }

  it "builds an Evaluation" do
    evaluation = parser.parse(text)
    evaluation.should be_a_new_record
  end

  it "sets the title" do
    evaluation = parser.parse(text)
    evaluation.title.should eql("Example Evaluation")
  end

  it "populates sections" do
    evaluation = parser.parse(text)
    evaluation.sections.should have(2).sections
  end
end
