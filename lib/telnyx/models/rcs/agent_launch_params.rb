# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      # @see Telnyx::Resources::Rcs::Agents#launch
      class AgentLaunchParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute campaign
        #
        #   @return [Telnyx::Models::Rcs::AgentLaunchParams::Campaign]
        required :campaign, -> { Telnyx::Rcs::AgentLaunchParams::Campaign }

        # @!attribute testing
        #
        #   @return [Telnyx::Models::Rcs::AgentTestingConfiguration]
        required :testing, -> { Telnyx::Rcs::AgentTestingConfiguration }

        # @!method initialize(id:, campaign:, testing:, request_options: {})
        #   @param id [String]
        #   @param campaign [Telnyx::Models::Rcs::AgentLaunchParams::Campaign]
        #   @param testing [Telnyx::Models::Rcs::AgentTestingConfiguration]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Campaign < Telnyx::Models::Rcs::AgentCampaignConfiguration
          # @!attribute agent_overview
          #
          #   @return [String]
          required :agent_overview, String

          # @!attribute consent_settings
          #
          #   @return [Telnyx::Models::Rcs::AgentConsentConfiguration]
          required :consent_settings, -> { Telnyx::Rcs::AgentConsentConfiguration }

          # @!attribute interactions
          #
          #   @return [Array<Telnyx::Models::Rcs::AgentInteraction>]
          required :interactions, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::AgentInteraction] }

          # @!attribute message_examples
          #
          #   @return [Array<String>]
          required :message_examples, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(agent_overview:, consent_settings:, interactions:, message_examples:)
          #   @param agent_overview [String]
          #   @param consent_settings [Telnyx::Models::Rcs::AgentConsentConfiguration]
          #   @param interactions [Array<Telnyx::Models::Rcs::AgentInteraction>]
          #   @param message_examples [Array<String>]
        end
      end
    end
  end
end
