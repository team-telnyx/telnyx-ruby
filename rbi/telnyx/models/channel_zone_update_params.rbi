# typed: strong

module Telnyx
  module Models
    class ChannelZoneUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::ChannelZoneUpdateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :channel_zone_id

      # The number of reserved channels
      sig { returns(Integer) }
      attr_accessor :channels

      sig do
        params(
          channel_zone_id: String,
          channels: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        channel_zone_id:,
        # The number of reserved channels
        channels:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            channel_zone_id: String,
            channels: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
