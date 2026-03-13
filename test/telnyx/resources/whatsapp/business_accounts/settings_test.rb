# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Whatsapp::BusinessAccounts::SettingsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.business_accounts.settings.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::Whatsapp::BusinessAccounts::SettingRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Whatsapp::BusinessAccounts::WabaSettings | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.business_accounts.settings.update("id")

    assert_pattern do
      response => Telnyx::Models::Whatsapp::BusinessAccounts::SettingUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Whatsapp::BusinessAccounts::WabaSettings | nil
      }
    end
  end
end
