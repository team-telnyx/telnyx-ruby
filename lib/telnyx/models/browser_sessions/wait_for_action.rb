# frozen_string_literal: true

module Telnyx
  module Models
    module BrowserSessions
      class WaitForAction < Telnyx::Internal::Type::BaseModel
        # @!attribute condition
        #
        #   @return [Telnyx::Models::BrowserSessions::WaitForAction::Condition::UnionMember0, Telnyx::Models::BrowserSessions::WaitForAction::Condition::UnionMember1, Telnyx::Models::BrowserSessions::WaitForAction::Condition::UnionMember2, Telnyx::Models::BrowserSessions::WaitForAction::Condition::Kind]
        required :condition, union: -> { Telnyx::BrowserSessions::WaitForAction::Condition }

        # @!attribute type
        #
        #   @return [Symbol, :wait_for]
        required :type, const: :wait_for

        # @!attribute idempotency_key
        #
        #   @return [String, nil]
        optional :idempotency_key, String

        # @!attribute include_observation
        #
        #   @return [Boolean, nil]
        optional :include_observation, Telnyx::Internal::Type::Boolean

        # @!attribute timeout_ms
        #
        #   @return [Integer, nil]
        optional :timeout_ms, Integer

        # @!method initialize(condition:, idempotency_key: nil, include_observation: nil, timeout_ms: nil, type: :wait_for)
        #   Wait for a condition before continuing.
        #
        #   @param condition [Telnyx::Models::BrowserSessions::WaitForAction::Condition::UnionMember0, Telnyx::Models::BrowserSessions::WaitForAction::Condition::UnionMember1, Telnyx::Models::BrowserSessions::WaitForAction::Condition::UnionMember2, Telnyx::Models::BrowserSessions::WaitForAction::Condition::Kind]
        #   @param idempotency_key [String]
        #   @param include_observation [Boolean]
        #   @param timeout_ms [Integer]
        #   @param type [Symbol, :wait_for]

        # @see Telnyx::Models::BrowserSessions::WaitForAction#condition
        module Condition
          extend Telnyx::Internal::Type::Union

          variant -> { Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember0 }

          variant -> { Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember1 }

          variant -> { Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember2 }

          variant -> { Telnyx::BrowserSessions::WaitForAction::Condition::Kind }

          class UnionMember0 < Telnyx::Internal::Type::BaseModel
            # @!attribute kind
            #
            #   @return [Symbol, :url_pattern]
            required :kind, const: :url_pattern

            # @!attribute pattern
            #
            #   @return [String]
            required :pattern, String

            # @!method initialize(pattern:, kind: :url_pattern)
            #   @param pattern [String]
            #   @param kind [Symbol, :url_pattern]
          end

          class UnionMember1 < Telnyx::Internal::Type::BaseModel
            # @!attribute kind
            #
            #   @return [Symbol, :ref]
            required :kind, const: :ref

            # @!attribute observation_id
            #
            #   @return [String]
            required :observation_id, String

            # @!attribute ref
            #
            #   @return [String]
            required :ref, String

            # @!method initialize(observation_id:, ref:, kind: :ref)
            #   @param observation_id [String]
            #   @param ref [String]
            #   @param kind [Symbol, :ref]
          end

          class UnionMember2 < Telnyx::Internal::Type::BaseModel
            # @!attribute kind
            #
            #   @return [Symbol, :text]
            required :kind, const: :text

            # @!attribute text
            #
            #   @return [String]
            required :text, String

            # @!method initialize(text:, kind: :text)
            #   @param text [String]
            #   @param kind [Symbol, :text]
          end

          class Kind < Telnyx::Internal::Type::BaseModel
            # @!attribute kind
            #
            #   @return [Symbol, :dom_stable]
            required :kind, const: :dom_stable

            # @!method initialize(kind: :dom_stable)
            #   @param kind [Symbol, :dom_stable]
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::BrowserSessions::WaitForAction::Condition::UnionMember0, Telnyx::Models::BrowserSessions::WaitForAction::Condition::UnionMember1, Telnyx::Models::BrowserSessions::WaitForAction::Condition::UnionMember2, Telnyx::Models::BrowserSessions::WaitForAction::Condition::Kind)]
        end
      end
    end
  end
end
