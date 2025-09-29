# typed: strong

module Telnyx
  module Models
    class InboundChannelUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::InboundChannelUpdateParams, Telnyx::Internal::AnyHash)
        end

      # The new number of concurrent channels for the account
      sig { returns(Integer) }
      attr_accessor :channels

      sig do
        params(
          channels: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The new number of concurrent channels for the account
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
