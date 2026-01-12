# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PhoneNumbers::VoiceTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.voice.retrieve("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::VoiceRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.voice.update("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::VoiceUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.voice.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings
    end

    assert_pattern do
      row => {
        id: String | nil,
        call_forwarding: Telnyx::PhoneNumbers::CallForwarding | nil,
        call_recording: Telnyx::PhoneNumbers::CallRecording | nil,
        cnam_listing: Telnyx::PhoneNumbers::CnamListing | nil,
        connection_id: String | nil,
        customer_reference: String | nil,
        emergency: Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency | nil,
        inbound_call_screening: Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::InboundCallScreening | nil,
        media_features: Telnyx::PhoneNumbers::MediaFeatures | nil,
        phone_number: String | nil,
        record_type: String | nil,
        tech_prefix_enabled: Telnyx::Internal::Type::Boolean | nil,
        translated_number: String | nil,
        usage_payment_method: Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::UsagePaymentMethod | nil
      }
    end
  end
end
