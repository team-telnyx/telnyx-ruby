# typed: strong

module Telnyx
  module Models
    class GcbChannelZone < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::GcbChannelZone, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Integer) }
      attr_accessor :channels

      # List of countries (in ISO 3166-2, capitalized) members of the billing channel
      # zone
      sig { returns(T::Array[String]) }
      attr_accessor :countries

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Telnyx::GcbChannelZone::RecordType::TaggedSymbol) }
      attr_accessor :record_type

      # ISO 8601 formatted date of when the channel zone was created
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # ISO 8601 formatted date of when the channel zone was updated
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          channels: Integer,
          countries: T::Array[String],
          name: String,
          record_type: Telnyx::GcbChannelZone::RecordType::OrSymbol,
          created_at: String,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        channels:,
        # List of countries (in ISO 3166-2, capitalized) members of the billing channel
        # zone
        countries:,
        name:,
        record_type:,
        # ISO 8601 formatted date of when the channel zone was created
        created_at: nil,
        # ISO 8601 formatted date of when the channel zone was updated
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            channels: Integer,
            countries: T::Array[String],
            name: String,
            record_type: Telnyx::GcbChannelZone::RecordType::TaggedSymbol,
            created_at: String,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::GcbChannelZone::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHANNEL_ZONE =
          T.let(:channel_zone, Telnyx::GcbChannelZone::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::GcbChannelZone::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
