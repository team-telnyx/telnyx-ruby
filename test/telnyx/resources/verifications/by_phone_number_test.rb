# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Verifications::ByPhoneNumberTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.verifications.by_phone_number.list("+13035551234")

    assert_pattern do
      response => Telnyx::Models::Verifications::ByPhoneNumberListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Verification]),
        meta: Telnyx::Models::Verifications::ByPhoneNumberListResponse::Meta
      }
    end
  end
end
