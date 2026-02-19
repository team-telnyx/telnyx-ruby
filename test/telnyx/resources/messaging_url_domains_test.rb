# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MessagingURLDomainsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.messaging_url_domains.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::MessagingURLDomainListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        record_type: String | nil,
        url_domain: String | nil,
        use_case: String | nil
      }
    end
  end
end
