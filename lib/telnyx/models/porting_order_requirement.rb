# frozen_string_literal: true

module Telnyx
  module Models
    class PortingOrderRequirement < Telnyx::Internal::Type::BaseModel
      # @!attribute field_type
      #   Type of value expected on field_value field
      #
      #   @return [Symbol, Telnyx::Models::PortingOrderRequirement::FieldType, nil]
      optional :field_type, enum: -> { Telnyx::PortingOrderRequirement::FieldType }

      # @!attribute field_value
      #   identifies the document that satisfies this requirement
      #
      #   @return [String, nil]
      optional :field_value, String

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [String, nil]
      optional :record_type, String

      # @!attribute requirement_type_id
      #   Identifies the requirement type that meets this requirement
      #
      #   @return [String, nil]
      optional :requirement_type_id, String

      # @!method initialize(field_type: nil, field_value: nil, record_type: nil, requirement_type_id: nil)
      #   @param field_type [Symbol, Telnyx::Models::PortingOrderRequirement::FieldType] Type of value expected on field_value field
      #
      #   @param field_value [String] identifies the document that satisfies this requirement
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param requirement_type_id [String] Identifies the requirement type that meets this requirement

      # Type of value expected on field_value field
      #
      # @see Telnyx::Models::PortingOrderRequirement#field_type
      module FieldType
        extend Telnyx::Internal::Type::Enum

        DOCUMENT = :document

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
