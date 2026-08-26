# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Knowledge::CollectionsTest < Telnyx::Test::ResourceTest
  def test_retrieve_documents
    skip("Mock server tests are disabled")

    response = @telnyx.ai.knowledge.collections.retrieve_documents("support-transcripts")

    assert_pattern do
      response => Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsResponse::Data]) | nil,
        meta: Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsResponse::Meta | nil
      }
    end
  end
end
