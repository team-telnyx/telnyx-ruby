# frozen_string_literal: true

module Telnyx
  module Models
    class VariableSchemaEntry < Telnyx::Internal::Type::BaseModel
      # @!attribute required
      #   Whether the variable must be supplied when strict variable validation is
      #   enabled.
      #
      #   @return [Boolean]
      required :required, Telnyx::Internal::Type::Boolean

      # @!attribute default
      #   Default value for an optional variable. Rejected when `required` is `true`.
      #
      #   @return [String, nil]
      optional :default, String

      # @!method initialize(required:, default: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VariableSchemaEntry} for more details.
      #
      #   @param required [Boolean] Whether the variable must be supplied when strict variable validation is enabled
      #
      #   @param default [String] Default value for an optional variable. Rejected when `required` is `true`.
    end
  end
end
