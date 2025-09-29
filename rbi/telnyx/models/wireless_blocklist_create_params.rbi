# typed: strong

module Telnyx
  module Models
    class WirelessBlocklistCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::WirelessBlocklistCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The name of the Wireless Blocklist.
      sig { returns(String) }
      attr_accessor :name

      # The type of wireless blocklist.
      sig { returns(Telnyx::WirelessBlocklistCreateParams::Type::OrSymbol) }
      attr_accessor :type

      # Values to block. The values here depend on the `type` of Wireless Blocklist.
      sig { returns(T::Array[String]) }
      attr_accessor :values

      sig do
        params(
          name: String,
          type: Telnyx::WirelessBlocklistCreateParams::Type::OrSymbol,
          values: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the Wireless Blocklist.
        name:,
        # The type of wireless blocklist.
        type:,
        # Values to block. The values here depend on the `type` of Wireless Blocklist.
        values:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            type: Telnyx::WirelessBlocklistCreateParams::Type::OrSymbol,
            values: T::Array[String],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of wireless blocklist.
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::WirelessBlocklistCreateParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COUNTRY =
          T.let(
            :country,
            Telnyx::WirelessBlocklistCreateParams::Type::TaggedSymbol
          )
        MCC =
          T.let(:mcc, Telnyx::WirelessBlocklistCreateParams::Type::TaggedSymbol)
        PLMN =
          T.let(
            :plmn,
            Telnyx::WirelessBlocklistCreateParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::WirelessBlocklistCreateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
