# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MessagingProfilesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.messaging_profiles.create(name: "My name", whitelisted_destinations: ["US"])

    assert_pattern do
      response => Telnyx::Models::MessagingProfileCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingProfile | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.messaging_profiles.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::MessagingProfileRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingProfile | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.messaging_profiles.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::MessagingProfileUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingProfile | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.messaging_profiles.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::MessagingProfile
    end

    assert_pattern do
      row => {
        id: String | nil,
        alpha_sender: String | nil,
        created_at: Time | nil,
        daily_spend_limit: String | nil,
        daily_spend_limit_enabled: Telnyx::Internal::Type::Boolean | nil,
        enabled: Telnyx::Internal::Type::Boolean | nil,
        health_webhook_url: String | nil,
        mms_fall_back_to_sms: Telnyx::Internal::Type::Boolean | nil,
        mms_transcoding: Telnyx::Internal::Type::Boolean | nil,
        mobile_only: Telnyx::Internal::Type::Boolean | nil,
        name: String | nil,
        number_pool_settings: Telnyx::NumberPoolSettings | nil,
        record_type: Telnyx::MessagingProfile::RecordType | nil,
        redaction_enabled: Telnyx::Internal::Type::Boolean | nil,
        redaction_level: Integer | nil,
        smart_encoding: Telnyx::Internal::Type::Boolean | nil,
        updated_at: Time | nil,
        url_shortener_settings: Telnyx::URLShortenerSettings | nil,
        v1_secret: String | nil,
        webhook_api_version: Telnyx::MessagingProfile::WebhookAPIVersion | nil,
        webhook_failover_url: String | nil,
        webhook_url: String | nil,
        whitelisted_destinations: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.messaging_profiles.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::MessagingProfileDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingProfile | nil
      }
    end
  end

  def test_list_phone_numbers
    skip("Prism tests are disabled")

    response = @telnyx.messaging_profiles.list_phone_numbers("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::PhoneNumberWithMessagingSettings
    end

    assert_pattern do
      row => {
        id: String | nil,
        country_code: String | nil,
        created_at: Time | nil,
        eligible_messaging_products: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        features: Telnyx::PhoneNumberWithMessagingSettings::Features | nil,
        health: Telnyx::NumberHealthMetrics | nil,
        messaging_product: String | nil,
        messaging_profile_id: String | nil,
        phone_number: String | nil,
        record_type: Telnyx::PhoneNumberWithMessagingSettings::RecordType | nil,
        traffic_type: String | nil,
        type: Telnyx::PhoneNumberWithMessagingSettings::Type | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list_short_codes
    skip("Prism tests are disabled")

    response = @telnyx.messaging_profiles.list_short_codes("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::ShortCode
    end

    assert_pattern do
      row => {
        messaging_profile_id: String | nil,
        id: String | nil,
        country_code: String | nil,
        created_at: Time | nil,
        record_type: Telnyx::ShortCode::RecordType | nil,
        short_code: String | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        updated_at: Time | nil
      }
    end
  end
end
