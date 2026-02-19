# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::SimCardGroups::ActionsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.sim_card_groups.actions.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardGroups::ActionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardGroups::SimCardGroupAction | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.sim_card_groups.actions.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::SimCardGroups::SimCardGroupAction
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: String | nil,
        record_type: String | nil,
        settings: Telnyx::SimCardGroups::SimCardGroupAction::Settings | nil,
        sim_card_group_id: String | nil,
        status: Telnyx::SimCardGroups::SimCardGroupAction::Status | nil,
        type: Telnyx::SimCardGroups::SimCardGroupAction::Type | nil,
        updated_at: String | nil
      }
    end
  end

  def test_remove_private_wireless_gateway
    skip("Mock server tests are disabled")

    response =
      @telnyx.sim_card_groups.actions.remove_private_wireless_gateway("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardGroups::ActionRemovePrivateWirelessGatewayResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardGroups::SimCardGroupAction | nil
      }
    end
  end

  def test_remove_wireless_blocklist
    skip("Mock server tests are disabled")

    response =
      @telnyx.sim_card_groups.actions.remove_wireless_blocklist("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardGroups::ActionRemoveWirelessBlocklistResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardGroups::SimCardGroupAction | nil
      }
    end
  end

  def test_set_private_wireless_gateway_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.sim_card_groups.actions.set_private_wireless_gateway(
        "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
        private_wireless_gateway_id: "6a09cdc3-8948-47f0-aa62-74ac943d6c58"
      )

    assert_pattern do
      response => Telnyx::Models::SimCardGroups::ActionSetPrivateWirelessGatewayResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardGroups::SimCardGroupAction | nil
      }
    end
  end

  def test_set_wireless_blocklist_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.sim_card_groups.actions.set_wireless_blocklist(
        "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
        wireless_blocklist_id: "6a09cdc3-8948-47f0-aa62-74ac943d6c58"
      )

    assert_pattern do
      response => Telnyx::Models::SimCardGroups::ActionSetWirelessBlocklistResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardGroups::SimCardGroupAction | nil
      }
    end
  end
end
