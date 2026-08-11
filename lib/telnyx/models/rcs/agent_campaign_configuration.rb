# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      class AgentCampaignConfiguration < Telnyx::Internal::Type::BaseModel
        # @!attribute company_overview
        #
        #   @return [String]
        required :company_overview, String

        # @!attribute additional_information
        #
        #   @return [String, nil]
        optional :additional_information, String, nil?: true

        # @!attribute agent_overview
        #
        #   @return [String, nil]
        optional :agent_overview, String, nil?: true

        # @!attribute consent_settings
        #
        #   @return [Telnyx::Models::Rcs::AgentConsentConfiguration, nil]
        optional :consent_settings, -> { Telnyx::Rcs::AgentConsentConfiguration }, nil?: true

        # @!attribute interactions
        #
        #   @return [Array<Telnyx::Models::Rcs::AgentInteraction>, nil]
        optional :interactions, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::AgentInteraction] }

        # @!attribute message_examples
        #
        #   @return [Array<String>, nil]
        optional :message_examples, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(company_overview:, additional_information: nil, agent_overview: nil, consent_settings: nil, interactions: nil, message_examples: nil)
        #   @param company_overview [String]
        #   @param additional_information [String, nil]
        #   @param agent_overview [String, nil]
        #   @param consent_settings [Telnyx::Models::Rcs::AgentConsentConfiguration, nil]
        #   @param interactions [Array<Telnyx::Models::Rcs::AgentInteraction>]
        #   @param message_examples [Array<String>]
      end
    end
  end
end
