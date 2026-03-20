# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Whatsapp::TemplatesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.whatsapp.templates.create(
        category: :MARKETING,
        components: [{format: :TEXT, type: :HEADER}],
        language: "language",
        name: "name",
        waba_id: "waba_id"
      )

    assert_pattern do
      response => Telnyx::Models::Whatsapp::TemplateCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::WhatsappTemplateData | nil
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
      row => Telnyx::WhatsappTemplateData
    end

    assert_pattern do
      row => {
        id: String | nil,
        category: Telnyx::WhatsappTemplateData::Category | nil,
        components: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]) | nil,
        created_at: Time | nil,
        language: String | nil,
        name: String | nil,
        record_type: String | nil,
        rejection_reason: String | nil,
        status: String | nil,
        template_id: String | nil,
        updated_at: Time | nil,
        whatsapp_business_account: Telnyx::WhatsappTemplateData::WhatsappBusinessAccount | nil
      }
    end
  end
end
