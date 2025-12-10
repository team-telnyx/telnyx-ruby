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
      response => Telnyx::Models::PhoneNumbers::MessagingListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumberWithMessagingSettings]) | nil,
        meta: Telnyx::Models::PhoneNumbers::MessagingListResponse::Meta | nil
      }
    end
  end
end
