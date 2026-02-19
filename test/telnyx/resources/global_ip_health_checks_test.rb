# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::GlobalIPHealthChecksTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @telnyx.global_ip_health_checks.create

    assert_pattern do
      response => Telnyx::Models::GlobalIPHealthCheckCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::GlobalIPHealthCheckCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.global_ip_health_checks.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::GlobalIPHealthCheckRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::GlobalIPHealthCheckRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.global_ip_health_checks.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::GlobalIPHealthCheckListResponse
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.global_ip_health_checks.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::GlobalIPHealthCheckDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::GlobalIPHealthCheckDeleteResponse::Data | nil
      }
    end
  end
end
