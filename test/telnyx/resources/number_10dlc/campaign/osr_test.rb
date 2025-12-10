# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Number10dlc::Campaign::OsrTest < Telnyx::Test::ResourceTest
  def test_get_attributes
    skip("Prism tests are disabled")

    response = @telnyx.number_10dlc.campaign.osr.get_attributes("campaignId")

    assert_pattern do
      response => ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown])
    end
  end
end
