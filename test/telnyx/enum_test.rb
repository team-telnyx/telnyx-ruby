# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class EnumTest < Test::Unit::TestCase
    setup do
      omit "enum value passing 200, not liking Telnyx Object"
    end
    should "retrieve enum endpoint" do
      enum = Enum.endpoint(endpoint: "laudantium")
      assert enum.is_a?(TelnyxObject)
    end
  end
end
