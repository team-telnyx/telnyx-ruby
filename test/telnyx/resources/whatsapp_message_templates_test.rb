# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::WhatsappMessageTemplatesTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp_message_templates.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::WhatsappMessageTemplateRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::WhatsappMessageTemplateRetrieveResponse::Data | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp_message_templates.update("id")

    assert_pattern do
      response => Telnyx::Models::WhatsappMessageTemplateUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::WhatsappMessageTemplateUpdateResponse::Data | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp_message_templates.delete("id")

    assert_pattern do
      response => nil
    end
  end
end
