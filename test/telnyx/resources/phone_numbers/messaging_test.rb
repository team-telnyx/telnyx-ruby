# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PhoneNumbers::MessagingTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.messaging.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::MessagingRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumberWithMessagingSettings | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.messaging.update("id")

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::MessagingUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumberWithMessagingSettings | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.messaging.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
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
end
