# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::PolicyAttachments#create
      class PolicyAttachmentCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute instance_id
        #
        #   @return [String]
        required :instance_id, String

        # @!attribute policy
        #   The policy to apply, by name.
        #
        #   @return [String]
        required :policy, String

        # @!attribute default
        #   `true` applies the policy only to the requests no other attachment matches.
        #
        #   @return [Boolean, nil]
        optional :default, Telnyx::Internal::Type::Boolean

        # @!attribute models
        #   The models whose requests the policy applies to, by name. A name can use `*` as
        #   a wildcard. Empty applies the policy to every request.
        #
        #   @return [Array<String>, nil]
        optional :models, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute priority
        #   An attachment with a priority applies before the others.
        #
        #   @return [Integer, nil]
        optional :priority, Integer, nil?: true

        # @!method initialize(instance_id:, policy:, default: nil, models: nil, priority: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::PolicyAttachmentCreateParams} for more details.
        #
        #   @param instance_id [String]
        #
        #   @param policy [String] The policy to apply, by name.
        #
        #   @param default [Boolean] `true` applies the policy only to the requests no other attachment matches.
        #
        #   @param models [Array<String>] The models whose requests the policy applies to, by name. A name can use `*` as
        #
        #   @param priority [Integer, nil] An attachment with a priority applies before the others.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
