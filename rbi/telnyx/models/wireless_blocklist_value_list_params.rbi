# typed: strong

module Telnyx
  module Models
    class WirelessBlocklistValueListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::WirelessBlocklistValueListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The Wireless Blocklist type for which to list possible values (e.g., `country`,
      # `mcc`, `plmn`).
      sig { returns(Telnyx::WirelessBlocklistValueListParams::Type::OrSymbol) }
      attr_accessor :type

      sig do
        params(
          type: Telnyx::WirelessBlocklistValueListParams::Type::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The Wireless Blocklist type for which to list possible values (e.g., `country`,
        # `mcc`, `plmn`).
        type:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            type: Telnyx::WirelessBlocklistValueListParams::Type::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The Wireless Blocklist type for which to list possible values (e.g., `country`,
      # `mcc`, `plmn`).
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::WirelessBlocklistValueListParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COUNTRY =
          T.let(
            :country,
            Telnyx::WirelessBlocklistValueListParams::Type::TaggedSymbol
          )
        MCC =
          T.let(
            :mcc,
            Telnyx::WirelessBlocklistValueListParams::Type::TaggedSymbol
          )
        PLMN =
          T.let(
            :plmn,
            Telnyx::WirelessBlocklistValueListParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::WirelessBlocklistValueListParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
