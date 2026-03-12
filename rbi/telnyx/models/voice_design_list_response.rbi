# typed: strong

module Telnyx
  module Models
    class VoiceDesignListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VoiceDesignListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Unique identifier for the voice design.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Timestamp when the voice design was first created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Name of the voice design.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Identifies the resource type.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::VoiceDesignListResponse::RecordType::TaggedSymbol
          )
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type:
            Telnyx::Models::VoiceDesignListResponse::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      # Timestamp when the voice design was last updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # A summarized voice design object (without version-specific fields).
      sig do
        params(
          id: String,
          created_at: Time,
          name: String,
          record_type:
            Telnyx::Models::VoiceDesignListResponse::RecordType::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the voice design.
        id: nil,
        # Timestamp when the voice design was first created.
        created_at: nil,
        # Name of the voice design.
        name: nil,
        # Identifies the resource type.
        record_type: nil,
        # Timestamp when the voice design was last updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            name: String,
            record_type:
              Telnyx::Models::VoiceDesignListResponse::RecordType::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # Identifies the resource type.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Models::VoiceDesignListResponse::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VOICE_DESIGN =
          T.let(
            :voice_design,
            Telnyx::Models::VoiceDesignListResponse::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::VoiceDesignListResponse::RecordType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
