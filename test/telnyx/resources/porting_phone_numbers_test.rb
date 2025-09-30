# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PortingPhoneNumbersTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.porting_phone_numbers.list

    assert_pattern do
      response => Telnyx::Models::PortingPhoneNumberListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortingPhoneNumberListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
