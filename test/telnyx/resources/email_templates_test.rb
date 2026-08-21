# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::EmailTemplatesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.email_templates.create(name: "Welcome Email")

    assert_pattern do
      response => Telnyx::EmailTemplateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailTemplate
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.email_templates.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::EmailTemplateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailTemplate
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.email_templates.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::EmailTemplateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailTemplate
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_templates.list

    assert_pattern do
      response => Telnyx::Internal::EmailCursorPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::EmailTemplate
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        html_body: String | nil,
        name: String,
        record_type: Telnyx::EmailTemplate::RecordType,
        subject: String | nil,
        text_body: String | nil,
        updated_at: Time,
        variables: ^(Telnyx::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.email_templates.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_render
    skip("Mock server tests are disabled")

    response = @telnyx.email_templates.render("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::EmailTemplateRenderResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::EmailTemplateRenderResponse::Data
      }
    end
  end

  def test_replace
    skip("Mock server tests are disabled")

    response = @telnyx.email_templates.replace("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::EmailTemplateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailTemplate
      }
    end
  end
end
