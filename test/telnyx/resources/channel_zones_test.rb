# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ChannelZonesTest < Telnyx::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response = @telnyx.channel_zones.update("channel_zone_id", channels: 0)

    assert_pattern do
      response => Telnyx::Models::ChannelZoneUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        channels: Integer,
        countries: ^(Telnyx::Internal::Type::ArrayOf[String]),
        name: String,
        record_type: Telnyx::Models::ChannelZoneUpdateResponse::RecordType,
        created_at: String | nil,
        updated_at: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.channel_zones.list

    assert_pattern do
      response => Telnyx::Models::ChannelZoneListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ChannelZoneListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
