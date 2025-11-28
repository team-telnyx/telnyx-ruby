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
        data: Telnyx::Models::MobilePhoneNumberRetrieveResponse::Data | nil
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
        data: Telnyx::Models::MobilePhoneNumberUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.mobile_phone_numbers.list

    assert_pattern do
      response => Telnyx::Models::MobilePhoneNumberListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MobilePhoneNumberListResponse::Data]) | nil,
        meta: Telnyx::Models::MobilePhoneNumberListResponse::Meta | nil
      }
    end
  end
end
