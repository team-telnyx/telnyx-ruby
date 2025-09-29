# frozen_string_literal: true

module Telnyx
  module Models
    class SubNumberOrderRegulatoryRequirementWithValue < Telnyx::Internal::Type::BaseModel
      # @!attribute field_value
      #   The value of the requirement, this could be an id to a resource or a string
      #   value.
      #
      #   @return [String, nil]
      optional :field_value, String

      # @!attribute requirement_id
      #   Unique id for a requirement.
      #
      #   @return [String, nil]
      optional :requirement_id, String

      response_only do
        # @!attribute field_type
        #
        #   @return [Symbol, Telnyx::Models::SubNumberOrderRegulatoryRequirementWithValue::FieldType, nil]
        optional :field_type, enum: -> { Telnyx::SubNumberOrderRegulatoryRequirementWithValue::FieldType }

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String
      end

      # @!method initialize(field_type: nil, field_value: nil, record_type: nil, requirement_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SubNumberOrderRegulatoryRequirementWithValue} for more details.
      #
      #   @param field_type [Symbol, Telnyx::Models::SubNumberOrderRegulatoryRequirementWithValue::FieldType]
      #
      #   @param field_value [String] The value of the requirement, this could be an id to a resource or a string valu
      #
      #   @param record_type [String]
      #
      #   @param requirement_id [String] Unique id for a requirement.

      # @see Telnyx::Models::SubNumberOrderRegulatoryRequirementWithValue#field_type
      module FieldType
        extend Telnyx::Internal::Type::Enum

        TEXTUAL = :textual
        DATETIME = :datetime
        ADDRESS = :address
        DOCUMENT = :document

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
