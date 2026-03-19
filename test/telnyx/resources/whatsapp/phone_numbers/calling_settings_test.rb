# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Whatsapp::PhoneNumbers::CallingSettingsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.phone_numbers.calling_settings.retrieve("phone_number")

    assert_pattern do
      response => Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingSettingsData | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.phone_numbers.calling_settings.update("phone_number", enabled: true)

    assert_pattern do
      response => Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingSettingsData | nil
      }
    end
  end
end
