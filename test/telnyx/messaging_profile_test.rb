# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Telnyx
  class MessagingProfileTest < Test::Unit::TestCase
    should "be listable" do
      messaging_profiles = Telnyx::MessagingProfile.list
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_profiles"
      assert messaging_profiles.data.is_a?(Array)
      assert messaging_profiles.first.is_a?(Telnyx::MessagingProfile)
    end

    should "be retrievable" do
      messaging_profile = Telnyx::MessagingProfile.retrieve("123")
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_profiles/123"
      assert messaging_profile.is_a?(Telnyx::MessagingProfile)
    end

    should "be creatable" do
      messaging_profile = Telnyx::MessagingProfile.create(name: "Foo")
      assert_requested :post, "#{Telnyx.api_base}/v2/messaging_profiles"
      assert messaging_profile.is_a?(Telnyx::MessagingProfile)
    end

    should "be saveable" do
      messaging_profile = Telnyx::MessagingProfile.retrieve("123")
      messaging_profile.name = "value"
      messaging_profile.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/messaging_profiles/#{messaging_profile.id}"
    end

    should "be updateable" do
      messaging_profile = Telnyx::MessagingProfile.update("123", name: "foo")
      assert_requested :patch, "#{Telnyx.api_base}/v2/messaging_profiles/123"
      assert messaging_profile.is_a?(Telnyx::MessagingProfile)
    end

    should "be deletable" do
      messaging_profile = Telnyx::MessagingProfile.retrieve("123")
      messaging_profile = messaging_profile.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/messaging_profiles/#{messaging_profile.id}"
      assert messaging_profile.is_a?(Telnyx::MessagingProfile)
    end

    should "be able to list PhoneNumbers" do
      messaging_profile = Telnyx::MessagingProfile.retrieve("123")
      phone_numbers = messaging_profile.phone_numbers
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_profiles/123/phone_numbers"
      assert phone_numbers.data.is_a?(Array)
      assert phone_numbers.data[0].is_a?(Telnyx::MessagingPhoneNumber)
    end

    should "be able to list alphanumeric sender ids" do
      messaging_profile = Telnyx::MessagingProfile.retrieve("123")
      alphanumeric_sender_ids = messaging_profile.alphanumeric_sender_ids
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_profiles/123/alphanumeric_sender_ids"
      assert_kind_of Telnyx::ListObject, alphanumeric_sender_ids
      assert_kind_of Telnyx::AlphanumericSenderId, alphanumeric_sender_ids.first
    end
  end
end
