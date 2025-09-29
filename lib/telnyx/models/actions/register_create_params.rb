# frozen_string_literal: true

module Telnyx
  module Models
    module Actions
      # @see Telnyx::Resources::Actions::Register#create
      class RegisterCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute registration_codes
        #
        #   @return [Array<String>]
        required :registration_codes, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute sim_card_group_id
        #   The group SIMCardGroup identification. This attribute can be <code>null</code>
        #   when it's present in an associated resource.
        #
        #   @return [String, nil]
        optional :sim_card_group_id, String

        # @!attribute status
        #   Status on which the SIM card will be set after being successful registered.
        #
        #   @return [Symbol, Telnyx::Models::Actions::RegisterCreateParams::Status, nil]
        optional :status, enum: -> { Telnyx::Actions::RegisterCreateParams::Status }

        # @!attribute tags
        #   Searchable tags associated with the SIM card
        #
        #   @return [Array<String>, nil]
        optional :tags, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(registration_codes:, sim_card_group_id: nil, status: nil, tags: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Actions::RegisterCreateParams} for more details.
        #
        #   @param registration_codes [Array<String>]
        #
        #   @param sim_card_group_id [String] The group SIMCardGroup identification. This attribute can be <code>null</code> w
        #
        #   @param status [Symbol, Telnyx::Models::Actions::RegisterCreateParams::Status] Status on which the SIM card will be set after being successful registered.
        #
        #   @param tags [Array<String>] Searchable tags associated with the SIM card
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Status on which the SIM card will be set after being successful registered.
        module Status
          extend Telnyx::Internal::Type::Enum

          ENABLED = :enabled
          DISABLED = :disabled
          STANDBY = :standby

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
