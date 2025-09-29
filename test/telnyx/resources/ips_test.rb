# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::IPsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ips.create(ip_address: "192.168.0.0")

    assert_pattern do
      response => Telnyx::Models::IPCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IP | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.ips.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::IPRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IP | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ips.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58", ip_address: "192.168.0.0")

    assert_pattern do
      response => Telnyx::Models::IPUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IP | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ips.list

    assert_pattern do
      response => Telnyx::Models::IPListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::IP]) | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.ips.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::IPDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IP | nil
      }
    end
  end
end
