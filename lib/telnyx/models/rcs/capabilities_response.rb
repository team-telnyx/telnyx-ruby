# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      class CapabilitiesResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute brand_entity
        #
        #   @return [Boolean]
        required :brand_entity, Telnyx::Internal::Type::Boolean

        # @!attribute brand_verification
        #
        #   @return [Boolean]
        required :brand_verification, Telnyx::Internal::Type::Boolean

        # @!attribute campaigns
        #
        #   @return [Boolean]
        required :campaigns, Telnyx::Internal::Type::Boolean

        # @!attribute distinct_launch_phase
        #
        #   @return [Boolean]
        required :distinct_launch_phase, Telnyx::Internal::Type::Boolean

        # @!attribute invite_test_devices
        #
        #   @return [Boolean]
        required :invite_test_devices, Telnyx::Internal::Type::Boolean

        # @!attribute per_carrier_approval
        #
        #   @return [Boolean]
        required :per_carrier_approval, Telnyx::Internal::Type::Boolean

        # @!attribute submission_sections
        #
        #   @return [Boolean]
        required :submission_sections, Telnyx::Internal::Type::Boolean

        # @!attribute templates
        #
        #   @return [Boolean]
        required :templates, Telnyx::Internal::Type::Boolean

        # @!attribute vendor_webhooks
        #
        #   @return [Boolean]
        required :vendor_webhooks, Telnyx::Internal::Type::Boolean

        # @!method initialize(brand_entity:, brand_verification:, campaigns:, distinct_launch_phase:, invite_test_devices:, per_carrier_approval:, submission_sections:, templates:, vendor_webhooks:)
        #   @param brand_entity [Boolean]
        #   @param brand_verification [Boolean]
        #   @param campaigns [Boolean]
        #   @param distinct_launch_phase [Boolean]
        #   @param invite_test_devices [Boolean]
        #   @param per_carrier_approval [Boolean]
        #   @param submission_sections [Boolean]
        #   @param templates [Boolean]
        #   @param vendor_webhooks [Boolean]
      end
    end
  end
end
