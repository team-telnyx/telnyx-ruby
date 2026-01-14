# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::SimCards::ActionsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.actions.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCards::ActionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCards::SimCardAction | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.actions.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::SimCards::SimCardAction
    end

    assert_pattern do
      row => {
        id: String | nil,
        action_type: Telnyx::SimCards::SimCardAction::ActionType | nil,
        created_at: String | nil,
        record_type: String | nil,
        settings: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        sim_card_id: String | nil,
        status: Telnyx::SimCards::SimCardAction::Status | nil,
        updated_at: String | nil
      }
    end
  end

  def test_bulk_set_public_ips_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.sim_cards.actions.bulk_set_public_ips(sim_card_ids: ["6b14e151-8493-4fa1-8664-1cc4e6d14158"])

    assert_pattern do
      response => Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse::Data | nil
      }
    end
  end

  def test_disable
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.actions.disable("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCards::ActionDisableResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCards::SimCardAction | nil
      }
    end
  end

  def test_enable
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.actions.enable("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCards::ActionEnableResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCards::SimCardAction | nil
      }
    end
  end

  def test_remove_public_ip
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.actions.remove_public_ip("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCards::ActionRemovePublicIPResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCards::SimCardAction | nil
      }
    end
  end

  def test_set_public_ip
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.actions.set_public_ip("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCards::ActionSetPublicIPResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCards::SimCardAction | nil
      }
    end
  end

  def test_set_standby
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.actions.set_standby("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCards::ActionSetStandbyResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCards::SimCardAction | nil
      }
    end
  end

  def test_validate_registration_codes
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.actions.validate_registration_codes

    assert_pattern do
      response => Telnyx::Models::SimCards::ActionValidateRegistrationCodesResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SimCards::ActionValidateRegistrationCodesResponse::Data]) | nil
      }
    end
  end
end
