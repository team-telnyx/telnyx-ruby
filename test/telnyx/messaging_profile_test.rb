# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class MessagingProfileTest < Test::Unit::TestCase
    setup do
      @id = "fa47ef1f-1534-bf92-3893-35cb41870c50"
    end
    should "be listable" do
      messaging_profiles = Telnyx::MessagingProfile.list
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_profiles"
      assert messaging_profiles.data.is_a?(Array)
      assert messaging_profiles.first.is_a?(Telnyx::MessagingProfile)
    end

    should "be retrievable" do
      messaging_profile = Telnyx::MessagingProfile.retrieve(@id)
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_profiles/#{@id}"
      assert messaging_profile.is_a?(Telnyx::MessagingProfile)
    end

    should "be creatable" do
      messaging_profile = Telnyx::MessagingProfile.create(name: "Foo")
      assert_requested :post, "#{Telnyx.api_base}/v2/messaging_profiles"
      assert messaging_profile.is_a?(Telnyx::MessagingProfile)
    end

    should "be saveable" do
      # stub out save until number_pool_settings issue is worked out
      messaging_profile = Telnyx::MessagingProfile.retrieve(@id)
      stub = stub_request(:patch, "#{Telnyx.api_base}/v2/messaging_profiles/#{messaging_profile.id}")
             .with(body: hash_including(name: "foo"))
             .to_return(body: JSON.generate(data: messaging_profile))
      messaging_profile.name = "foo"
      messaging_profile.save
      # assert_requested :patch, "#{Telnyx.api_base}/v2/messaging_profiles/#{messaging_profile.id}"
      assert_requested stub
    end

    should "be updatable" do
      # stub out save until number_pool_settings issue is worked out
      stub = stub_request(:patch, "#{Telnyx.api_base}/v2/messaging_profiles/#{@id}")
             .with(body: hash_including(name: "foo"))
             .to_return(body: JSON.generate(data: MessagingProfile.retrieve(@id)))
      messaging_profile = Telnyx::MessagingProfile.update(@id, name: "foo")
      # assert_requested :patch, "#{Telnyx.api_base}/v2/messaging_profiles/#{@id}"
      assert_requested stub
      assert messaging_profile.is_a?(Telnyx::MessagingProfile)
    end

    should "be deletable" do
      messaging_profile = Telnyx::MessagingProfile.retrieve(@id)
      id = messaging_profile.id.freeze
      messaging_profile = messaging_profile.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/messaging_profiles/#{id}"
      assert messaging_profile.is_a?(Telnyx::MessagingProfile)
    end

    should "be able to list PhoneNumbers" do
      messaging_profile = Telnyx::MessagingProfile.retrieve(@id)
      id = messaging_profile.id.freeze
      phone_numbers = messaging_profile.phone_numbers
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_profiles/#{id}/phone_numbers"
      assert phone_numbers.data.is_a?(Array)
      assert_kind_of Telnyx::MessagingPhoneNumber, phone_numbers.data[0]
    end

    should "be able to list alphanumeric sender ids" do
      omit "alphanumeric ids mock spec removed"
      messaging_profile = Telnyx::MessagingProfile.retrieve(@id)
      alphanumeric_sender_ids = messaging_profile.alphanumeric_sender_ids
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_profiles/#{@id}/alphanumeric_sender_ids"
      assert_kind_of Telnyx::ListObject, alphanumeric_sender_ids
      assert_kind_of Telnyx::AlphanumericSenderId, alphanumeric_sender_ids.first
    end

    should "be able to list autoresp_configs" do
      messaging_profile = Telnyx::MessagingProfile.retrieve(@id)
      id = messaging_profile.id.freeze
      messaging_profile.autoresp_configs
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_profiles/#{id}/autoresp_configs"
    end
  end
end
