# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::TexmlApplicationsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml_applications.create(friendly_name: "call-router", voice_url: "https://example.com")

    assert_pattern do
      response => Telnyx::Models::TexmlApplicationCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TexmlApplication | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.texml_applications.retrieve("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::TexmlApplicationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TexmlApplication | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml_applications.update(
        "1293384261075731499",
        friendly_name: "call-router",
        voice_url: "https://example.com"
      )

    assert_pattern do
      response => Telnyx::Models::TexmlApplicationUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TexmlApplication | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.texml_applications.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::TexmlApplication
    end

    assert_pattern do
      row => {
        id: String | nil,
        active: Telnyx::Internal::Type::Boolean | nil,
        anchorsite_override: Telnyx::AnchorsiteOverride | nil,
        call_cost_in_webhooks: Telnyx::Internal::Type::Boolean | nil,
        created_at: String | nil,
        dtmf_type: Telnyx::DtmfType | nil,
        first_command_timeout: Telnyx::Internal::Type::Boolean | nil,
        first_command_timeout_secs: Integer | nil,
        friendly_name: String | nil,
        inbound: Telnyx::TexmlApplication::Inbound | nil,
        outbound: Telnyx::TexmlApplication::Outbound | nil,
        record_type: String | nil,
        status_callback: String | nil,
        status_callback_method: Telnyx::TexmlApplication::StatusCallbackMethod | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        updated_at: String | nil,
        voice_fallback_url: String | nil,
        voice_method: Telnyx::TexmlApplication::VoiceMethod | nil,
        voice_url: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.texml_applications.delete("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::TexmlApplicationDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TexmlApplication | nil
      }
    end
  end
end
