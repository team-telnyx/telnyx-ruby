# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::MobilePhoneNumbers::MessagingTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.mobile_phone_numbers.messaging.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.mobile_phone_numbers.messaging.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::MobilePhoneNumbers::MessagingListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        country_code: String | nil,
        created_at: Time | nil,
        features: Telnyx::Models::MobilePhoneNumbers::MessagingListResponse::Features | nil,
        messaging_product: String | nil,
        messaging_profile_id: String | nil,
        phone_number: String | nil,
        record_type: Telnyx::Models::MobilePhoneNumbers::MessagingListResponse::RecordType | nil,
        traffic_type: String | nil,
        type: Telnyx::Models::MobilePhoneNumbers::MessagingListResponse::Type | nil,
        updated_at: Time | nil
      }
    end
  end
end
