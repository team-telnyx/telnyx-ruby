# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::InboundChannelsTest < Telnyx::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response = @telnyx.inbound_channels.update(channels: 7)

    assert_pattern do
      response => Telnyx::Models::InboundChannelUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::InboundChannelUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.inbound_channels.list

    assert_pattern do
      response => Telnyx::Models::InboundChannelListResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::InboundChannelListResponse::Data | nil
      }
    end
  end
end
