require 'spec_helper'

describe ResponseAnswer do
  describe "marshalling values" do
    it "handles nil" do
      answer = ResponseAnswer.new
      answer.value.should == nil
    end
  end
end
