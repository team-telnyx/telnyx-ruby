# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::ManagedAccounts::ActionsTest < Telnyx::Test::ResourceTest
  def test_disable
    skip("Prism tests are disabled")

    response = @telnyx.managed_accounts.actions.disable("id")

    assert_pattern do
      response => Telnyx::Models::ManagedAccounts::ActionDisableResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ManagedAccount | nil
      }
    end
  end

  def test_enable
    skip("Prism tests are disabled")

    response = @telnyx.managed_accounts.actions.enable("id")

    assert_pattern do
      response => Telnyx::Models::ManagedAccounts::ActionEnableResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ManagedAccount | nil
      }
    end
  end
end
