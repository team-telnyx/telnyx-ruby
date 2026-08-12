# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      # @see Telnyx::Resources::Rcs::Agents#create
      class AgentResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute agent_id
        #
        #   @return [String]
        required :agent_id, String

        # @!attribute basics_status
        #
        #   @return [Symbol, Telnyx::Models::Rcs::AgentSubmissionStatus, nil]
        required :basics_status, enum: -> { Telnyx::Rcs::AgentSubmissionStatus }, nil?: true

        # @!attribute billing_category
        #
        #   @return [Symbol, Telnyx::Models::Rcs::AgentResponse::BillingCategory, nil]
        required :billing_category, enum: -> { Telnyx::Rcs::AgentResponse::BillingCategory }, nil?: true

        # @!attribute brand_id
        #
        #   @return [String]
        required :brand_id, String

        # @!attribute campaign_status
        #
        #   @return [Symbol, Telnyx::Models::Rcs::AgentSubmissionStatus, nil]
        required :campaign_status, enum: -> { Telnyx::Rcs::AgentSubmissionStatus }, nil?: true

        # @!attribute capabilities
        #
        #   @return [Telnyx::Models::Rcs::CapabilitiesResponse]
        required :capabilities, -> { Telnyx::Rcs::CapabilitiesResponse }

        # @!attribute carrier_approvals
        #
        #   @return [Array<Telnyx::Models::Rcs::CarrierApprovalResponse>]
        required :carrier_approvals, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::CarrierApprovalResponse] }

        # @!attribute configuration
        #
        #   @return [Telnyx::Models::Rcs::AgentConfiguration]
        required :configuration, -> { Telnyx::Rcs::AgentConfiguration }

        # @!attribute display_name
        #
        #   @return [String]
        required :display_name, String

        # @!attribute hosting_region
        #
        #   @return [String, nil]
        required :hosting_region, String, nil?: true

        # @!attribute profile_id
        #
        #   @return [String, nil]
        required :profile_id, String, nil?: true

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::Rcs::AgentResponse::Status]
        required :status, enum: -> { Telnyx::Rcs::AgentResponse::Status }

        # @!attribute test_devices
        #
        #   @return [Array<Telnyx::Models::Rcs::Agents::TestDeviceResponse>]
        required :test_devices, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::Agents::TestDeviceResponse] }

        # @!attribute testing_status
        #
        #   @return [Symbol, Telnyx::Models::Rcs::AgentSubmissionStatus, nil]
        required :testing_status, enum: -> { Telnyx::Rcs::AgentSubmissionStatus }, nil?: true

        # @!attribute use_case
        #
        #   @return [Symbol, Telnyx::Models::Rcs::AgentUseCase]
        required :use_case, enum: -> { Telnyx::Rcs::AgentUseCase }

        # @!method initialize(agent_id:, basics_status:, billing_category:, brand_id:, campaign_status:, capabilities:, carrier_approvals:, configuration:, display_name:, hosting_region:, profile_id:, status:, test_devices:, testing_status:, use_case:)
        #   @param agent_id [String]
        #   @param basics_status [Symbol, Telnyx::Models::Rcs::AgentSubmissionStatus, nil]
        #   @param billing_category [Symbol, Telnyx::Models::Rcs::AgentResponse::BillingCategory, nil]
        #   @param brand_id [String]
        #   @param campaign_status [Symbol, Telnyx::Models::Rcs::AgentSubmissionStatus, nil]
        #   @param capabilities [Telnyx::Models::Rcs::CapabilitiesResponse]
        #   @param carrier_approvals [Array<Telnyx::Models::Rcs::CarrierApprovalResponse>]
        #   @param configuration [Telnyx::Models::Rcs::AgentConfiguration]
        #   @param display_name [String]
        #   @param hosting_region [String, nil]
        #   @param profile_id [String, nil]
        #   @param status [Symbol, Telnyx::Models::Rcs::AgentResponse::Status]
        #   @param test_devices [Array<Telnyx::Models::Rcs::Agents::TestDeviceResponse>]
        #   @param testing_status [Symbol, Telnyx::Models::Rcs::AgentSubmissionStatus, nil]
        #   @param use_case [Symbol, Telnyx::Models::Rcs::AgentUseCase]

        # @see Telnyx::Models::Rcs::AgentResponse#billing_category
        module BillingCategory
          extend Telnyx::Internal::Type::Enum

          NON_CONVERSATIONAL = :NON_CONVERSATIONAL
          CONVERSATIONAL = :CONVERSATIONAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Rcs::AgentResponse#status
        module Status
          extend Telnyx::Internal::Type::Enum

          CREATED = :CREATED
          SUBMITTED = :SUBMITTED
          VERIFYING = :VERIFYING
          VERIFIED = :VERIFIED
          LAUNCHING = :LAUNCHING
          LAUNCHED = :LAUNCHED
          LIVE = :LIVE
          REJECTED = :REJECTED
          FAILED = :FAILED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
