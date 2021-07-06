# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class PublicKeyTest < Test::Unit::TestCase
    should "be retrievable" do
      omit "mock spec removed"
      public_key = Telnyx::PublicKey.retrieve
      assert_requested :get, "#{Telnyx.api_base}/v2/public_key"
      assert public_key.is_a?(Telnyx::PublicKey)
    end
  end
end
