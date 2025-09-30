# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MessagingURLDomainsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.messaging_url_domains.list

    assert_pattern do
      response => Telnyx::Models::MessagingURLDomainListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessagingURLDomainListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
