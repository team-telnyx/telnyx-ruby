# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class BusinessIdentitieTest < Test::Unit::TestCase
    setup do
      @identities = BusinessIdentitie.list
      @id = @identities[:data].first.id.freeze
    end

    should "be listable" do
      assert_requested :get, "#{Telnyx.api_base}/v2/business_identities"
      assert_kind_of ListObject, @identities
      assert_kind_of TelnyxObject, @identities[:data].first
      assert @identities[:data].is_a?(Array)
    end

    should "be retrievable" do
      identity = BusinessIdentitie.retrieve(@id)
      assert_requested :get, "#{Telnyx.api_base}/v2/business_identities/#{@id}"
      assert identity.is_a?(BusinessIdentitie)
    end
  end
end
