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

      # The number of reserved channels
      sig { returns(Integer) }
      attr_accessor :channels

      sig do
        params(
          channels: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The number of reserved channels
        channels:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { channels: Integer, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
