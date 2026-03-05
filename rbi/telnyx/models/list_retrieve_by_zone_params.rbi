# typed: strong

module Telnyx
  module Models
    class ListRetrieveByZoneParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::ListRetrieveByZoneParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :channel_zone_id

      sig do
        params(
          channel_zone_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(channel_zone_id:, request_options: {})
      end

      sig do
        override.returns(
          { channel_zone_id: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
