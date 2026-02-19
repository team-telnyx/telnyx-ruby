# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::GlobalIPProtocolsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.global_ip_protocols.list

    assert_pattern do
      response => Telnyx::Models::GlobalIPProtocolListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::GlobalIPProtocolListResponse::Data]) | nil
      }
    end
  end
end
