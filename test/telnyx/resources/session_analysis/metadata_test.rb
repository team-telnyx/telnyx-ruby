# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::SessionAnalysis::MetadataTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.session_analysis.metadata.retrieve

    assert_pattern do
      response => Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse
    end

    assert_pattern do
      response => {
        meta: Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::Meta,
        query_parameters: ^(Telnyx::Internal::Type::HashOf[Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::QueryParameter]),
        record_types: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType])
      }
    end
  end

  def test_retrieve_record_type
    skip("Mock server tests are disabled")

    response = @telnyx.session_analysis.metadata.retrieve_record_type("record_type")

    assert_pattern do
      response => Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse
    end

    assert_pattern do
      response => {
        aliases: ^(Telnyx::Internal::Type::ArrayOf[String]),
        child_relationships: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship]),
        event: String,
        examples: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]),
        meta: Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::Meta,
        parent_relationships: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship]),
        product: String,
        record_type: String
      }
    end
  end
end
