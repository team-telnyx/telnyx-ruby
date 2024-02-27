# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class InferenceTest < Test::Unit::TestCase
    should "be creatable" do
      Telnyx::Inference.create(text: ["Foo"])
      assert_requested :post, "#{Telnyx.api_base}/v2/ai/generate"
    end
  end
end
