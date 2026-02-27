# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::VirtualCrossConnectsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.virtual_cross_connects.create(region_code: "ashburn-va")

    assert_pattern do
      response => Telnyx::Models::VirtualCrossConnectCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::VirtualCrossConnectCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.virtual_cross_connects.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::VirtualCrossConnectRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::VirtualCrossConnectRetrieveResponse::Data | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.virtual_cross_connects.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::VirtualCrossConnectUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::VirtualCrossConnectUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.virtual_cross_connects.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::VirtualCrossConnectListResponse
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.virtual_cross_connects.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::VirtualCrossConnectDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::VirtualCrossConnectDeleteResponse::Data | nil
      }
    end
  end
end
