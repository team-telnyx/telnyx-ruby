# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayPolicyAttachment < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   The attachment's ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   When the attachment was created.
        #
        #   @return [Time, nil]
        required :created_at, Time, nil?: true

        # @!attribute default
        #   `true` applies the policy only to the requests no other attachment matches.
        #
        #   @return [Boolean]
        required :default, Telnyx::Internal::Type::Boolean

        # @!attribute models
        #   The models whose requests the policy applies to, by name. A name can use `*` as
        #   a wildcard. Empty applies the policy to every request.
        #
        #   @return [Array<String>]
        required :models, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute policy
        #   The policy to apply, by name.
        #
        #   @return [String]
        required :policy, String

        # @!attribute priority
        #   An attachment with a priority applies before the others.
        #
        #   @return [Integer, nil]
        required :priority, Integer, nil?: true

        # @!attribute updated_at
        #   When the attachment last changed.
        #
        #   @return [Time, nil]
        required :updated_at, Time, nil?: true

        # @!method initialize(id:, created_at:, default:, models:, policy:, priority:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::AgentGatewayPolicyAttachment} for more details.
        #
        #   Where an instance applies a policy.
        #
        #   @param id [String] The attachment's ID.
        #
        #   @param created_at [Time, nil] When the attachment was created.
        #
        #   @param default [Boolean] `true` applies the policy only to the requests no other attachment matches.
        #
        #   @param models [Array<String>] The models whose requests the policy applies to, by name. A name can use `*` as
        #
        #   @param policy [String] The policy to apply, by name.
        #
        #   @param priority [Integer, nil] An attachment with a priority applies before the others.
        #
        #   @param updated_at [Time, nil] When the attachment last changed.
      end
    end

    AgentGatewayPolicyAttachment = AgentGateways::AgentGatewayPolicyAttachment
  end
end
