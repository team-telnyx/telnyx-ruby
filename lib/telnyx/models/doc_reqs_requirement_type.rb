# frozen_string_literal: true

module Telnyx
  module Models
    class DocReqsRequirementType < Telnyx::Internal::Type::BaseModel
      # @!attribute acceptance_criteria
      #   Specifies objective criteria for acceptance
      #
      #   @return [Telnyx::Models::DocReqsRequirementType::AcceptanceCriteria, nil]
      optional :acceptance_criteria, -> { Telnyx::DocReqsRequirementType::AcceptanceCriteria }

      # @!attribute description
      #   Describes the requirement type
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute example
      #   Provides one or more examples of acceptable documents
      #
      #   @return [String, nil]
      optional :example, String

      # @!attribute type
      #   Defines the type of this requirement type
      #
      #   @return [Symbol, Telnyx::Models::DocReqsRequirementType::Type, nil]
      optional :type, enum: -> { Telnyx::DocReqsRequirementType::Type }

      response_only do
        # @!attribute id
        #   Identifies the associated document
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute name
        #   A short descriptive name for this requirement_type
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute record_type
        #   Identifies the type of the resource
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute updated_at
        #   ISO 8601 formatted date-time indicating when the resource was last updated.
        #
        #   @return [String, nil]
        optional :updated_at, String
      end

      # @!method initialize(id: nil, acceptance_criteria: nil, created_at: nil, description: nil, example: nil, name: nil, record_type: nil, type: nil, updated_at: nil)
      #   @param id [String] Identifies the associated document
      #
      #   @param acceptance_criteria [Telnyx::Models::DocReqsRequirementType::AcceptanceCriteria] Specifies objective criteria for acceptance
      #
      #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
      #
      #   @param description [String] Describes the requirement type
      #
      #   @param example [String] Provides one or more examples of acceptable documents
      #
      #   @param name [String] A short descriptive name for this requirement_type
      #
      #   @param record_type [String] Identifies the type of the resource
      #
      #   @param type [Symbol, Telnyx::Models::DocReqsRequirementType::Type] Defines the type of this requirement type
      #
      #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was last updated.

      # @see Telnyx::Models::DocReqsRequirementType#acceptance_criteria
      class AcceptanceCriteria < Telnyx::Internal::Type::BaseModel
        # @!attribute acceptable_characters
        #   Specifies the allowed characters as a string
        #
        #   @return [String, nil]
        optional :acceptable_characters, String

        # @!attribute acceptable_values
        #   Specifies the list of strictly possible values for the requirement. Ignored when
        #   empty
        #
        #   @return [Array<String>, nil]
        optional :acceptable_values, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute locality_limit
        #   Specifies geography-based acceptance criteria
        #
        #   @return [String, nil]
        optional :locality_limit, String

        # @!attribute max_length
        #   Maximum length allowed for the value
        #
        #   @return [Integer, nil]
        optional :max_length, Integer

        # @!attribute min_length
        #   Minimum length allowed for the value
        #
        #   @return [Integer, nil]
        optional :min_length, Integer

        # @!attribute time_limit
        #   Specifies time-based acceptance criteria
        #
        #   @return [String, nil]
        optional :time_limit, String

        # @!method initialize(acceptable_characters: nil, acceptable_values: nil, locality_limit: nil, max_length: nil, min_length: nil, time_limit: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::DocReqsRequirementType::AcceptanceCriteria} for more details.
        #
        #   Specifies objective criteria for acceptance
        #
        #   @param acceptable_characters [String] Specifies the allowed characters as a string
        #
        #   @param acceptable_values [Array<String>] Specifies the list of strictly possible values for the requirement. Ignored when
        #
        #   @param locality_limit [String] Specifies geography-based acceptance criteria
        #
        #   @param max_length [Integer] Maximum length allowed for the value
        #
        #   @param min_length [Integer] Minimum length allowed for the value
        #
        #   @param time_limit [String] Specifies time-based acceptance criteria
      end

      # Defines the type of this requirement type
      #
      # @see Telnyx::Models::DocReqsRequirementType#type
      module Type
        extend Telnyx::Internal::Type::Enum

        DOCUMENT = :document
        ADDRESS = :address
        TEXTUAL = :textual

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
