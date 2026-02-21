# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MessagingHostedNumbersTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.messaging_hosted_numbers.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::MessagingHostedNumberRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumberWithMessagingSettings | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.messaging_hosted_numbers.update("id")

    assert_pattern do
      response => Telnyx::Models::MessagingHostedNumberUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumberWithMessagingSettings | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.messaging_hosted_numbers.list

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
        organization_id: String | nil,
        phone_number: String | nil,
        record_type: Telnyx::PhoneNumberWithMessagingSettings::RecordType | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        traffic_type: String | nil,
        type: Telnyx::PhoneNumberWithMessagingSettings::Type | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.messaging_hosted_numbers.delete("id")

    assert_pattern do
      response => Telnyx::Models::MessagingHostedNumberDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingHostedNumberOrder | nil
      }
    end
  end
end
