# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PhoneNumbersTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.phone_numbers.retrieve("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::PhoneNumberRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumberDetailed | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.phone_numbers.update("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::PhoneNumberUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumberDetailed | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.phone_numbers.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::PhoneNumberDetailed
    end

    assert_pattern do
      row => {
        id: String,
        country_iso_alpha2: String,
        created_at: Time,
        deletion_lock_enabled: Telnyx::Internal::Type::Boolean,
        external_pin: String | nil,
        phone_number: String,
        phone_number_type: Telnyx::PhoneNumberDetailed::PhoneNumberType,
        purchased_at: String,
        record_type: String,
        status: Telnyx::PhoneNumberDetailed::Status,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]),
        billing_group_id: String | nil,
        call_forwarding_enabled: Telnyx::Internal::Type::Boolean | nil,
        call_recording_enabled: Telnyx::Internal::Type::Boolean | nil,
        caller_id_name_enabled: Telnyx::Internal::Type::Boolean | nil,
        cnam_listing_enabled: Telnyx::Internal::Type::Boolean | nil,
        connection_id: String | nil,
        connection_name: String | nil,
        customer_reference: String | nil,
        emergency_address_id: String | nil,
        emergency_enabled: Telnyx::Internal::Type::Boolean | nil,
        emergency_status: Telnyx::PhoneNumberDetailed::EmergencyStatus | nil,
        hd_voice_enabled: Telnyx::Internal::Type::Boolean | nil,
        inbound_call_screening: Telnyx::PhoneNumberDetailed::InboundCallScreening | nil,
        messaging_profile_id: String | nil,
        messaging_profile_name: String | nil,
        source_type: Telnyx::PhoneNumberDetailed::SourceType | nil,
        t38_fax_gateway_enabled: Telnyx::Internal::Type::Boolean | nil,
        updated_at: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.phone_numbers.delete("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::PhoneNumberDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::PhoneNumberDeleteResponse::Data | nil
      }
    end
  end

  def test_slim_list
    skip("Mock server tests are disabled")

    response = @telnyx.phone_numbers.slim_list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::PhoneNumberSlimListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        billing_group_id: String | nil,
        call_forwarding_enabled: Telnyx::Internal::Type::Boolean | nil,
        call_recording_enabled: Telnyx::Internal::Type::Boolean | nil,
        caller_id_name_enabled: Telnyx::Internal::Type::Boolean | nil,
        cnam_listing_enabled: Telnyx::Internal::Type::Boolean | nil,
        connection_id: String | nil,
        country_iso_alpha2: String | nil,
        created_at: String | nil,
        customer_reference: String | nil,
        emergency_address_id: String | nil,
        emergency_enabled: Telnyx::Internal::Type::Boolean | nil,
        emergency_status: Telnyx::Models::PhoneNumberSlimListResponse::EmergencyStatus | nil,
        external_pin: String | nil,
        hd_voice_enabled: Telnyx::Internal::Type::Boolean | nil,
        inbound_call_screening: Telnyx::Models::PhoneNumberSlimListResponse::InboundCallScreening | nil,
        phone_number: String | nil,
        phone_number_type: Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType | nil,
        purchased_at: String | nil,
        record_type: String | nil,
        status: Telnyx::Models::PhoneNumberSlimListResponse::Status | nil,
        t38_fax_gateway_enabled: Telnyx::Internal::Type::Boolean | nil,
        updated_at: String | nil
      }
    end
  end
end
