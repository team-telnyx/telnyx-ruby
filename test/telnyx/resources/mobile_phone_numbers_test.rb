# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MobilePhoneNumbersTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.mobile_phone_numbers.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::MobilePhoneNumberRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MobilePhoneNumber | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.mobile_phone_numbers.update("id")

    assert_pattern do
      response => Telnyx::Models::MobilePhoneNumberUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MobilePhoneNumber | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.mobile_phone_numbers.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::MobilePhoneNumber
    end

    assert_pattern do
      row => {
        id: String | nil,
        call_forwarding: Telnyx::MobilePhoneNumber::CallForwarding | nil,
        call_recording: Telnyx::MobilePhoneNumber::CallRecording | nil,
        caller_id_name_enabled: Telnyx::Internal::Type::Boolean | nil,
        cnam_listing: Telnyx::MobilePhoneNumber::CnamListing | nil,
        connection_id: String | nil,
        connection_name: String | nil,
        connection_type: String | nil,
        country_iso_alpha2: String | nil,
        created_at: Time | nil,
        customer_reference: String | nil,
        inbound: Telnyx::MobilePhoneNumber::Inbound | nil,
        inbound_call_screening: Telnyx::MobilePhoneNumber::InboundCallScreening | nil,
        mobile_voice_enabled: Telnyx::Internal::Type::Boolean | nil,
        noise_suppression: Telnyx::MobilePhoneNumber::NoiseSuppression | nil,
        outbound: Telnyx::MobilePhoneNumber::Outbound | nil,
        phone_number: String | nil,
        record_type: String | nil,
        sim_card_id: String | nil,
        status: String | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        updated_at: Time | nil
      }
    end
  end
end
