# typed: strong

module Telnyx
  module Models
    class SubNumberOrderRegulatoryRequirement < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::SubNumberOrderRegulatoryRequirement,
            Telnyx::Internal::AnyHash
          )
        end

      # Unique id for a requirement.
      sig { returns(T.nilable(String)) }
      attr_reader :requirement_id

      sig { params(requirement_id: String).void }
      attr_writer :requirement_id

      sig do
        returns(
          T.nilable(
            Telnyx::SubNumberOrderRegulatoryRequirement::FieldType::TaggedSymbol
          )
        )
      end
      attr_reader :field_type

      sig do
        params(
          field_type:
            Telnyx::SubNumberOrderRegulatoryRequirement::FieldType::OrSymbol
        ).void
      end
      attr_writer :field_type

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig do
        params(
          field_type:
            Telnyx::SubNumberOrderRegulatoryRequirement::FieldType::OrSymbol,
          record_type: String,
          requirement_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        field_type: nil,
        record_type: nil,
        # Unique id for a requirement.
        requirement_id: nil
      )
      end

      sig do
        override.returns(
          {
            field_type:
              Telnyx::SubNumberOrderRegulatoryRequirement::FieldType::TaggedSymbol,
            record_type: String,
            requirement_id: String
          }
        )
      end
      def to_hash
      end

      module FieldType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::SubNumberOrderRegulatoryRequirement::FieldType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TEXTUAL =
          T.let(
            :textual,
            Telnyx::SubNumberOrderRegulatoryRequirement::FieldType::TaggedSymbol
          )
        DATETIME =
          T.let(
            :datetime,
            Telnyx::SubNumberOrderRegulatoryRequirement::FieldType::TaggedSymbol
          )
        ADDRESS =
          T.let(
            :address,
            Telnyx::SubNumberOrderRegulatoryRequirement::FieldType::TaggedSymbol
          )
        DOCUMENT =
          T.let(
            :document,
            Telnyx::SubNumberOrderRegulatoryRequirement::FieldType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::SubNumberOrderRegulatoryRequirement::FieldType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
