# frozen_string_literal: true

module Telnyx
  module Models
    class EmailValidationCheck < Telnyx::Internal::Type::BaseModel
      # @!attribute pass
      #
      #   @return [Boolean]
      required :pass, Telnyx::Internal::Type::Boolean

      # @!attribute details
      #   Human-readable check detail. Omitted when nil.
      #
      #   @return [String, nil]
      optional :details, String

      # @!method initialize(pass:, details: nil)
      #   @param pass [Boolean]
      #
      #   @param details [String] Human-readable check detail. Omitted when nil.
    end
  end
end
