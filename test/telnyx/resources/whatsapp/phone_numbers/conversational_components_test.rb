# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Whatsapp::PhoneNumbers::ConversationalComponentsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.phone_numbers.conversational_components.list("phone_number")

    assert_pattern do
      response => Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Whatsapp::PhoneNumbers::WhatsappConversationalComponent | nil
      }
    end
  end

  def test_patch_all
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.phone_numbers.conversational_components.patch_all("phone_number")

    assert_pattern do
      response => Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Whatsapp::PhoneNumbers::WhatsappConversationalComponent | nil
      }
    end
  end
end
