# frozen_string_literal: true

module Telnyx
  module Models
    module BrowserSessions
      class SelectAction < Telnyx::Internal::Type::BaseModel
        # @!attribute observation_id
        #
        #   @return [String]
        required :observation_id, String

        # @!attribute ref
        #
        #   @return [String]
        required :ref, String

        # @!attribute type
        #
        #   @return [Symbol, :select]
        required :type, const: :select

        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!attribute idempotency_key
        #
        #   @return [String, nil]
        optional :idempotency_key, String

        # @!attribute include_observation
        #
        #   @return [Boolean, nil]
        optional :include_observation, Telnyx::Internal::Type::Boolean

        # @!method initialize(observation_id:, ref:, value:, idempotency_key: nil, include_observation: nil, type: :select)
        #   Select an option on the element identified by observation_id + ref.
        #
        #   @param observation_id [String]
        #   @param ref [String]
        #   @param value [String]
        #   @param idempotency_key [String]
        #   @param include_observation [Boolean]
        #   @param type [Symbol, :select]
      end
    end
  end
end
