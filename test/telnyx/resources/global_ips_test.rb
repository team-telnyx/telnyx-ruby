# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::GlobalIPsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.global_ips.create

    assert_pattern do
      response => Telnyx::Models::GlobalIPCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::GlobalIPCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.global_ips.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::GlobalIPRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::GlobalIPRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.global_ips.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::GlobalIPListResponse
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.global_ips.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::GlobalIPDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::GlobalIPDeleteResponse::Data | nil
      }
    end
  end
end
