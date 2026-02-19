# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::DocumentLinksTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.document_links.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::DocumentLinkListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: String | nil,
        document_id: String | nil,
        linked_record_type: String | nil,
        linked_resource_id: String | nil,
        record_type: String | nil,
        updated_at: String | nil
      }
    end
  end
end
