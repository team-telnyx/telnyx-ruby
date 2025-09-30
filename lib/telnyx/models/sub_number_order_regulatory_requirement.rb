# frozen_string_literal: true

module Telnyx
  module Models
    class SubNumberOrderRegulatoryRequirement < Telnyx::Internal::Type::BaseModel
      # @!attribute requirement_id
      #   Unique id for a requirement.
      #
      #   @return [String, nil]
      optional :requirement_id, String

      response_only do
        # @!attribute field_type
        #
        #   @return [Symbol, Telnyx::Models::SubNumberOrderRegulatoryRequirement::FieldType, nil]
        optional :field_type, enum: -> { Telnyx::SubNumberOrderRegulatoryRequirement::FieldType }

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String
      end

      # @!method initialize(field_type: nil, record_type: nil, requirement_id: nil)
      #   @param field_type [Symbol, Telnyx::Models::SubNumberOrderRegulatoryRequirement::FieldType]
      #
      #   @param record_type [String]
      #
      #   @param requirement_id [String] Unique id for a requirement.

      # @see Telnyx::Models::SubNumberOrderRegulatoryRequirement#field_type
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
