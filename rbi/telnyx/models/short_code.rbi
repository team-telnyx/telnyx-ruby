# typed: strong

module Telnyx
  module Models
    class ShortCode < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::ShortCode, Telnyx::Internal::AnyHash) }

      # Unique identifier for a messaging profile.
      sig { returns(T.nilable(String)) }
      attr_accessor :messaging_profile_id

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 3166-1 alpha-2 country code.
      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Identifies the type of the resource.
      sig { returns(T.nilable(Telnyx::ShortCode::RecordType::TaggedSymbol)) }
      attr_reader :record_type

      sig { params(record_type: Telnyx::ShortCode::RecordType::OrSymbol).void }
      attr_writer :record_type

      # Short digit sequence used to address messages.
      sig { returns(T.nilable(String)) }
      attr_reader :short_code

      sig { params(short_code: String).void }
      attr_writer :short_code

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          messaging_profile_id: T.nilable(String),
          id: String,
          country_code: String,
          created_at: Time,
          record_type: Telnyx::ShortCode::RecordType::OrSymbol,
          short_code: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for a messaging profile.
        messaging_profile_id:,
        # Identifies the type of resource.
        id: nil,
        # ISO 3166-1 alpha-2 country code.
        country_code: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # Short digit sequence used to address messages.
        short_code: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            messaging_profile_id: T.nilable(String),
            id: String,
            country_code: String,
            created_at: Time,
            record_type: Telnyx::ShortCode::RecordType::TaggedSymbol,
            short_code: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # Identifies the type of the resource.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::ShortCode::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SHORT_CODE =
          T.let(:short_code, Telnyx::ShortCode::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::ShortCode::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
