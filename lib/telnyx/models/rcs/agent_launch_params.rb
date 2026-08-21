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
          # @!method initialize
        end
      end
    end
  end
end
