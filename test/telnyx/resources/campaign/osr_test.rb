# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Campaign::OsrTest < Telnyx::Test::ResourceTest
  def test_get_attributes
    skip("Prism tests are disabled")

    response = @telnyx.campaign.osr.get_attributes("campaignId")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end
end
