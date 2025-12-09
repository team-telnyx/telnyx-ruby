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
      response => Telnyx::Models::MobilePhoneNumbers::MessagingListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MobilePhoneNumbers::MessagingListResponse::Data]) | nil,
        meta: Telnyx::Models::MobilePhoneNumbers::MessagingListResponse::Meta | nil
      }
    end
  end
end
