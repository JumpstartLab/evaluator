require 'spec_helper'

describe Evaluation do
  describe "#access_code" do
    it "is the parameterized title" do
      evaluation = Evaluation.new(title: "Singin' in the rain")
      evaluation.access_code.should == "singin-in-the-rain"
    end

    it "handles empty title" do
      evaluation = Evaluation.new(title: '')
      evaluation.access_code.should == ""
    end
  end
end
