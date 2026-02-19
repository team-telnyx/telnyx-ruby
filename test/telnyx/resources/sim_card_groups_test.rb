# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SimCardGroupsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.sim_card_groups.create(name: "My Test Group")

    assert_pattern do
      response => Telnyx::Models::SimCardGroupCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardGroup | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.sim_card_groups.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardGroupRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardGroup | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.sim_card_groups.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardGroupUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardGroup | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.sim_card_groups.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::SimCardGroupListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        consumed_data: Telnyx::ConsumedData | nil,
        created_at: String | nil,
        data_limit: Telnyx::Models::SimCardGroupListResponse::DataLimit | nil,
        default: Telnyx::Internal::Type::Boolean | nil,
        name: String | nil,
        private_wireless_gateway_id: String | nil,
        record_type: String | nil,
        sim_card_count: Integer | nil,
        updated_at: String | nil,
        wireless_blocklist_id: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.sim_card_groups.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardGroupDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardGroup | nil
      }
    end
  end
end
