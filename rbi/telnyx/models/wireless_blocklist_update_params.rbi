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

      # The name of the Wireless Blocklist.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The type of wireless blocklist.
      sig do
        returns(
          T.nilable(Telnyx::WirelessBlocklistUpdateParams::Type::OrSymbol)
        )
      end
      attr_reader :type

      sig do
        params(type: Telnyx::WirelessBlocklistUpdateParams::Type::OrSymbol).void
      end
      attr_writer :type

      # Values to block. The values here depend on the `type` of Wireless Blocklist.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :values

      sig { params(values: T::Array[String]).void }
      attr_writer :values

      sig do
        params(
          name: String,
          type: Telnyx::WirelessBlocklistUpdateParams::Type::OrSymbol,
          values: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the Wireless Blocklist.
        name: nil,
        # The type of wireless blocklist.
        type: nil,
        # Values to block. The values here depend on the `type` of Wireless Blocklist.
        values: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            type: Telnyx::WirelessBlocklistUpdateParams::Type::OrSymbol,
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
            T.all(Symbol, Telnyx::WirelessBlocklistUpdateParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COUNTRY =
          T.let(
            :country,
            Telnyx::WirelessBlocklistUpdateParams::Type::TaggedSymbol
          )
        MCC =
          T.let(:mcc, Telnyx::WirelessBlocklistUpdateParams::Type::TaggedSymbol)
        PLMN =
          T.let(
            :plmn,
            Telnyx::WirelessBlocklistUpdateParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::WirelessBlocklistUpdateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
