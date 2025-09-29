# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AvailablePhoneNumberBlocksTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.available_phone_number_blocks.list

    assert_pattern do
      response => Telnyx::Models::AvailablePhoneNumberBlockListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data]) | nil,
        meta: Telnyx::Models::AvailablePhoneNumberBlockListResponse::Meta | nil
      }
    end
  end
end
