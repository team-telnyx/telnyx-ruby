# typed: strong

module Telnyx
  module Models
    class WirelessBlocklist < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::WirelessBlocklist, Telnyx::Internal::AnyHash)
        end

      # The wireless blocklist name.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The type of the wireless blocklist.
      sig { returns(T.nilable(Telnyx::WirelessBlocklist::Type::TaggedSymbol)) }
      attr_reader :type

      sig { params(type: Telnyx::WirelessBlocklist::Type::OrSymbol).void }
      attr_writer :type

      # Values to block. The values here depend on the `type` of Wireless Blocklist.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :values

      sig { params(values: T::Array[String]).void }
      attr_writer :values

      # Identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date-time indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # ISO 8601 formatted date-time indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          created_at: String,
          name: String,
          record_type: String,
          type: Telnyx::WirelessBlocklist::Type::OrSymbol,
          updated_at: String,
          values: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        # The wireless blocklist name.
        name: nil,
        record_type: nil,
        # The type of the wireless blocklist.
        type: nil,
        # ISO 8601 formatted date-time indicating when the resource was updated.
        updated_at: nil,
        # Values to block. The values here depend on the `type` of Wireless Blocklist.
        values: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            name: String,
            record_type: String,
            type: Telnyx::WirelessBlocklist::Type::TaggedSymbol,
            updated_at: String,
            values: T::Array[String]
          }
        )
      end
      def to_hash
      end

      # The type of the wireless blocklist.
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::WirelessBlocklist::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COUNTRY = T.let(:country, Telnyx::WirelessBlocklist::Type::TaggedSymbol)
        MCC = T.let(:mcc, Telnyx::WirelessBlocklist::Type::TaggedSymbol)
        PLMN = T.let(:plmn, Telnyx::WirelessBlocklist::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::WirelessBlocklist::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
