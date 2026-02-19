# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Messaging10dlc::Campaign::OsrTest < Telnyx::Test::ResourceTest
  def test_get_attributes
    skip("Mock server tests are disabled")

    response = @telnyx.messaging_10dlc.campaign.osr.get_attributes("campaignId")

    assert_pattern do
      response => ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown])
    end
  end
end
