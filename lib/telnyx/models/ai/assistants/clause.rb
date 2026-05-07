# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        class Clause < Telnyx::Internal::Type::BaseModel
          # @!attribute attribute
          #   Attribute name from the routing context
          #
          #   @return [String]
          required :attribute, String

          # @!attribute operator
          #   Match operator
          #
          #   @return [Symbol, Telnyx::Models::AI::Assistants::Clause::Operator]
          required :operator, enum: -> { Telnyx::AI::Assistants::Clause::Operator }

          # @!attribute values
          #
          #   @return [Array<String>]
          required :values, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(attribute:, operator:, values:)
          #   A single attribute/operator/values check.
          #
          #   A clause matches when the routing context's value for `attribute` satisfies
          #   `operator` against any of `values`.
          #
          #   @param attribute [String] Attribute name from the routing context
          #
          #   @param operator [Symbol, Telnyx::Models::AI::Assistants::Clause::Operator] Match operator
          #
          #   @param values [Array<String>]

          # Match operator
          #
          # @see Telnyx::Models::AI::Assistants::Clause#operator
          module Operator
            extend Telnyx::Internal::Type::Enum

            IN = :in
            NOT_IN = :not_in
            STARTS_WITH = :starts_with

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
