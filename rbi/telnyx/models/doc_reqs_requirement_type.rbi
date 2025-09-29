# typed: strong

module Telnyx
  module Models
    class DocReqsRequirementType < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::DocReqsRequirementType, Telnyx::Internal::AnyHash)
        end

      # Specifies objective criteria for acceptance
      sig do
        returns(T.nilable(Telnyx::DocReqsRequirementType::AcceptanceCriteria))
      end
      attr_reader :acceptance_criteria

      sig do
        params(
          acceptance_criteria:
            Telnyx::DocReqsRequirementType::AcceptanceCriteria::OrHash
        ).void
      end
      attr_writer :acceptance_criteria

      # Describes the requirement type
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Provides one or more examples of acceptable documents
      sig { returns(T.nilable(String)) }
      attr_reader :example

      sig { params(example: String).void }
      attr_writer :example

      # Defines the type of this requirement type
      sig do
        returns(T.nilable(Telnyx::DocReqsRequirementType::Type::TaggedSymbol))
      end
      attr_reader :type

      sig { params(type: Telnyx::DocReqsRequirementType::Type::OrSymbol).void }
      attr_writer :type

      # Identifies the associated document
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date-time indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # A short descriptive name for this requirement_type
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Identifies the type of the resource
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # ISO 8601 formatted date-time indicating when the resource was last updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          acceptance_criteria:
            Telnyx::DocReqsRequirementType::AcceptanceCriteria::OrHash,
          created_at: String,
          description: String,
          example: String,
          name: String,
          record_type: String,
          type: Telnyx::DocReqsRequirementType::Type::OrSymbol,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the associated document
        id: nil,
        # Specifies objective criteria for acceptance
        acceptance_criteria: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        # Describes the requirement type
        description: nil,
        # Provides one or more examples of acceptable documents
        example: nil,
        # A short descriptive name for this requirement_type
        name: nil,
        # Identifies the type of the resource
        record_type: nil,
        # Defines the type of this requirement type
        type: nil,
        # ISO 8601 formatted date-time indicating when the resource was last updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            acceptance_criteria:
              Telnyx::DocReqsRequirementType::AcceptanceCriteria,
            created_at: String,
            description: String,
            example: String,
            name: String,
            record_type: String,
            type: Telnyx::DocReqsRequirementType::Type::TaggedSymbol,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      class AcceptanceCriteria < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::DocReqsRequirementType::AcceptanceCriteria,
              Telnyx::Internal::AnyHash
            )
          end

        # Specifies the allowed characters as a string
        sig { returns(T.nilable(String)) }
        attr_reader :acceptable_characters

        sig { params(acceptable_characters: String).void }
        attr_writer :acceptable_characters

        # Specifies the list of strictly possible values for the requirement. Ignored when
        # empty
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :acceptable_values

        sig { params(acceptable_values: T::Array[String]).void }
        attr_writer :acceptable_values

        # Specifies geography-based acceptance criteria
        sig { returns(T.nilable(String)) }
        attr_reader :locality_limit

        sig { params(locality_limit: String).void }
        attr_writer :locality_limit

        # Maximum length allowed for the value
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_length

        sig { params(max_length: Integer).void }
        attr_writer :max_length

        # Minimum length allowed for the value
        sig { returns(T.nilable(Integer)) }
        attr_reader :min_length

        sig { params(min_length: Integer).void }
        attr_writer :min_length

        # Specifies time-based acceptance criteria
        sig { returns(T.nilable(String)) }
        attr_reader :time_limit

        sig { params(time_limit: String).void }
        attr_writer :time_limit

        # Specifies objective criteria for acceptance
        sig do
          params(
            acceptable_characters: String,
            acceptable_values: T::Array[String],
            locality_limit: String,
            max_length: Integer,
            min_length: Integer,
            time_limit: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the allowed characters as a string
          acceptable_characters: nil,
          # Specifies the list of strictly possible values for the requirement. Ignored when
          # empty
          acceptable_values: nil,
          # Specifies geography-based acceptance criteria
          locality_limit: nil,
          # Maximum length allowed for the value
          max_length: nil,
          # Minimum length allowed for the value
          min_length: nil,
          # Specifies time-based acceptance criteria
          time_limit: nil
        )
        end

        sig do
          override.returns(
            {
              acceptable_characters: String,
              acceptable_values: T::Array[String],
              locality_limit: String,
              max_length: Integer,
              min_length: Integer,
              time_limit: String
            }
          )
        end
        def to_hash
        end
      end

      # Defines the type of this requirement type
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::DocReqsRequirementType::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DOCUMENT =
          T.let(:document, Telnyx::DocReqsRequirementType::Type::TaggedSymbol)
        ADDRESS =
          T.let(:address, Telnyx::DocReqsRequirementType::Type::TaggedSymbol)
        TEXTUAL =
          T.let(:textual, Telnyx::DocReqsRequirementType::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::DocReqsRequirementType::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
