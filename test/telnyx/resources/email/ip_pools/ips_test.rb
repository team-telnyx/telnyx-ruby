# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Email::IPPools::IPsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email.ip_pools.ips.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        dedicated_ip_id: "6a7f9a30-1234-4b5c-8d9e-0f1a2b3c4d5e"
      )

    assert_pattern do
      response => Telnyx::Models::Email::IPPools::IPCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Email::IPPools::IPCreateResponse::Data
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email.ip_pools.ips.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end
end
