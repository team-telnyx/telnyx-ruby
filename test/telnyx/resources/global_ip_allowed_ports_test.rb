# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::GlobalIPAllowedPortsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.global_ip_allowed_ports.list

    assert_pattern do
      response => Telnyx::Models::GlobalIPAllowedPortListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::GlobalIPAllowedPortListResponse::Data]) | nil
      }
    end
  end
end
