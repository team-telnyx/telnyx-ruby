# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::DocumentLinksTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.document_links.list

    assert_pattern do
      response => Telnyx::Models::DocumentLinkListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::DocumentLinkListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
