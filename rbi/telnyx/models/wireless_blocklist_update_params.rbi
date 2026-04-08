# typed: strong

module Telnyx
  module Models
    class WirelessBlocklistUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::WirelessBlocklistUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The name of the Wireless Blocklist.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Values to block. The values here depend on the `type` of Wireless Blocklist.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :values

      sig { params(values: T::Array[String]).void }
      attr_writer :values

      sig do
        params(
          id: String,
          name: String,
          values: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The name of the Wireless Blocklist.
        name: nil,
        # Values to block. The values here depend on the `type` of Wireless Blocklist.
        values: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            name: String,
            values: T::Array[String],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
