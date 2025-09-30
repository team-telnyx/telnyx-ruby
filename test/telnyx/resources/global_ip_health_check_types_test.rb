# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::GlobalIPHealthCheckTypesTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.global_ip_health_check_types.list

    assert_pattern do
      response => Telnyx::Models::GlobalIPHealthCheckTypeListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::GlobalIPHealthCheckTypeListResponse::Data]) | nil
      }
    end
  end
end
