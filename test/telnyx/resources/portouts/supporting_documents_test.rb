# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Portouts::SupportingDocumentsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.portouts.supporting_documents.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Portouts::SupportingDocumentCreateResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Portouts::SupportingDocumentCreateResponse::Data]) | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.portouts.supporting_documents.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Portouts::SupportingDocumentListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Portouts::SupportingDocumentListResponse::Data]) | nil
      }
    end
  end
end
