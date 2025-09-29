# frozen_string_literal: true

module Telnyx
  module Models
    class UpdateRegulatoryRequirement < Telnyx::Internal::Type::BaseModel
      # @!attribute field_value
      #   The value of the requirement. For address and document requirements, this should
      #   be the ID of the resource. For textual, this should be the value of the
      #   requirement.
      #
      #   @return [String, nil]
      optional :field_value, String

      # @!attribute requirement_id
      #   Unique id for a requirement.
      #
      #   @return [String, nil]
      optional :requirement_id, String

      # @!method initialize(field_value: nil, requirement_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::UpdateRegulatoryRequirement} for more details.
      #
      #   @param field_value [String] The value of the requirement. For address and document requirements, this should
      #
      #   @param requirement_id [String] Unique id for a requirement.
    end
  end
end
