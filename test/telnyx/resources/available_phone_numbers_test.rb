# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AvailablePhoneNumbersTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.available_phone_numbers.list

    assert_pattern do
      response => Telnyx::Models::AvailablePhoneNumberListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AvailablePhoneNumberListResponse::Data]) | nil,
        meta: Telnyx::Models::AvailablePhoneNumberListResponse::Meta | nil
      }
    end
  end
end
