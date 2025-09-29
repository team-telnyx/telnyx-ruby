# typed: strong

module Telnyx
  module Models
    class ExternalConnectionUpdateLocationParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ExternalConnectionUpdateLocationParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # A new static emergency address ID to update the location with
      sig { returns(String) }
      attr_accessor :static_emergency_address_id

      sig do
        params(
          id: String,
          static_emergency_address_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # A new static emergency address ID to update the location with
        static_emergency_address_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            static_emergency_address_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
