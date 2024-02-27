# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class CustomStorageCredentialTest < Test::Unit::TestCase
    setup do
      @connection_id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce".freeze
    end

    should "retrieve Custom Storage Credential" do
      custom = CustomStorageCredential.retrieve @connection_id
      assert_requested(:get, "#{Telnyx.api_base}/v2/custom_storage_credentials/#{@connection_id}")
      assert custom.is_a?(CustomStorageCredential)
    end
  end
end
