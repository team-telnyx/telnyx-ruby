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
  end
end
