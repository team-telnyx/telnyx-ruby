# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::VerifyProfilesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.verify_profiles.create(name: "Test Profile")

    assert_pattern do
      response => Telnyx::VerifyProfileData
    end

    assert_pattern do
      response => {
        data: Telnyx::VerifyProfile | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.verify_profiles.retrieve("12ade33a-21c0-473b-b055-b3c836e1c292")

    assert_pattern do
      response => Telnyx::VerifyProfileData
    end

    assert_pattern do
      response => {
        data: Telnyx::VerifyProfile | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.verify_profiles.update("12ade33a-21c0-473b-b055-b3c836e1c292")

    assert_pattern do
      response => Telnyx::VerifyProfileData
    end

    assert_pattern do
      response => {
        data: Telnyx::VerifyProfile | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.verify_profiles.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::VerifyProfile
    end

    assert_pattern do
      row => {
        id: String | nil,
        call: Telnyx::VerifyProfile::Call | nil,
        created_at: String | nil,
        flashcall: Telnyx::VerifyProfile::Flashcall | nil,
        language: String | nil,
        name: String | nil,
        record_type: Telnyx::VerifyProfile::RecordType | nil,
        sms: Telnyx::VerifyProfile::SMS | nil,
        updated_at: String | nil,
        webhook_failover_url: String | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.verify_profiles.delete("12ade33a-21c0-473b-b055-b3c836e1c292")

    assert_pattern do
      response => Telnyx::VerifyProfileData
    end

    assert_pattern do
      response => {
        data: Telnyx::VerifyProfile | nil
      }
    end
  end

  def test_create_template_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.verify_profiles.create_template(text: "Your {{app_name}} verification code is: {{code}}.")

    assert_pattern do
      response => Telnyx::MessageTemplate
    end

    assert_pattern do
      response => {
        data: Telnyx::VerifyProfileMessageTemplateResponse | nil
      }
    end
  end

  def test_retrieve_templates
    skip("Mock server tests are disabled")

    response = @telnyx.verify_profiles.retrieve_templates

    assert_pattern do
      response => Telnyx::Models::VerifyProfileRetrieveTemplatesResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::VerifyProfileMessageTemplateResponse])
      }
    end
  end

  def test_update_template_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.verify_profiles.update_template(
        "12ade33a-21c0-473b-b055-b3c836e1c292",
        text: "Your {{app_name}} verification code is: {{code}}."
      )

    assert_pattern do
      response => Telnyx::MessageTemplate
    end

    assert_pattern do
      response => {
        data: Telnyx::VerifyProfileMessageTemplateResponse | nil
      }
    end
  end
end
