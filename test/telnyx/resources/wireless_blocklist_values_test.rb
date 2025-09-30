# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::WirelessBlocklistValuesTest < Telnyx::Test::ResourceTest
  def test_list_required_params
    skip("Prism tests are disabled")

    response = @telnyx.wireless_blocklist_values.list(type: :country)

    assert_pattern do
      response => Telnyx::Models::WirelessBlocklistValueListResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::WirelessBlocklistValueListResponse::Data | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
