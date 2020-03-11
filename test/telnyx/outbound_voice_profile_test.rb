# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class OutboundVoiceProfileTest < Test::Unit::TestCase
    # Stubbed until the mock spec updates with this endpoint
    setup do
      stub_request(:get, "#{Telnyx.api_base}/v2/outbound_voice_profiles/1234")
        .to_return(body: JSON.generate(data:
        { id: "1234", record_type: "outbound_voice_profile" }))
    end
    should "list outbound voice profiles" do
      stub = stub_request(:get, "#{Telnyx.api_base}/v2/outbound_voice_profiles")
             .to_return(body: JSON.generate(data: [
               { id: "1234567", record_type: "outbound_voice_profile" },
             ]))
      outbound_voice_profiles = OutboundVoiceProfile.list
      # assert_requested :get, "#{Telnyx.api_base}/v2/outbound_voice_profiles"
      assert_requested stub
      assert_kind_of ListObject, outbound_voice_profiles
      assert_kind_of OutboundVoiceProfile, outbound_voice_profiles.first
    end

    should "create outbound voice profile" do
      stub = stub_request(:post, "#{Telnyx.api_base}/v2/outbound_voice_profiles")
             .to_return(body: JSON.generate(data:
              { id: "1234", record_type: "outbound_voice_profile" }))
      OutboundVoiceProfile.create
      # assert_requested :post, "#{Telnyx.api_base}/v2/outbound_voice_profiles"
      assert_requested stub
    end

    should "retrieve outbound voice profile" do
      stub = stub_request(:get, "#{Telnyx.api_base}/v2/outbound_voice_profiles/1234")
             .to_return(body: JSON.generate(data:
               { id: "1234", record_type: "outbound_voice_profile" }))
      outbound_voice_profile = OutboundVoiceProfile.retrieve("1234")
      # assert_requested :get, "#{Telnyx.api_base}/v2/outbound_voice_profiles/1234"
      assert_requested stub
      assert_kind_of OutboundVoiceProfile, outbound_voice_profile
    end

    should "delete outbound voice profile" do
      stub = stub_request(:delete, "#{Telnyx.api_base}/v2/outbound_voice_profiles/1234")
             .to_return(body: JSON.generate(data:
               { id: "1234", record_type: "outbound_voice_profile" }))
      outbound_voice_profile = OutboundVoiceProfile.retrieve("1234")

      outbound_voice_profile.delete
      # assert_requested :delete, "#{Telnyx.api_base}/v2/outbound_voice_profiles/id"
      assert_requested stub
    end

    should "update outbound voice profile" do
      stub = stub_request(:patch, "#{Telnyx.api_base}/v2/outbound_voice_profiles/1234")
             .to_return(body: JSON.generate(data:
               { id: "1234", record_type: "outbound_voice_profile" }))
      outbound_voice_profile = OutboundVoiceProfile.retrieve("1234")

      outbound_voice_profile.active = false
      outbound_voice_profile.save
      # assert_requested :patch, "#{Telnyx.api_base}/v2/outbound_voice_profiles/id"
      assert_requested stub
    end
  end
end
