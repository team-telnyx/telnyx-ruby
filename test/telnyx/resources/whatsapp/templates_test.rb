# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Whatsapp::TemplatesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.whatsapp.templates.create(
        category: :MARKETING,
        components: [{}],
        language: "language",
        name: "name",
        waba_id: "waba_id"
      )

    assert_pattern do
      response => Telnyx::Models::Whatsapp::TemplateCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Whatsapp::TemplateCreateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.templates.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Whatsapp::TemplateListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        category: Telnyx::Models::Whatsapp::TemplateListResponse::Category | nil,
        components: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]) | nil,
        created_at: Time | nil,
        language: String | nil,
        name: String | nil,
        record_type: String | nil,
        rejection_reason: String | nil,
        status: String | nil,
        template_id: String | nil,
        updated_at: Time | nil,
        whatsapp_business_account: Telnyx::Models::Whatsapp::TemplateListResponse::WhatsappBusinessAccount | nil
      }
    end
  end
end
