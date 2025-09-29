# frozen_string_literal: true

module Telnyx
  module Models
    module Actions
      # @see Telnyx::Resources::Actions::Purchase#create
      class PurchaseCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute amount
        #   The amount of eSIMs to be purchased.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute product
        #   Type of product to be purchased, specify "whitelabel" to use a custom SPN
        #
        #   @return [String, nil]
        optional :product, String

        # @!attribute sim_card_group_id
        #   The group SIMCardGroup identification. This attribute can be <code>null</code>
        #   when it's present in an associated resource.
        #
        #   @return [String, nil]
        optional :sim_card_group_id, String

        # @!attribute status
        #   Status on which the SIM cards will be set after being successfully registered.
        #
        #   @return [Symbol, Telnyx::Models::Actions::PurchaseCreateParams::Status, nil]
        optional :status, enum: -> { Telnyx::Actions::PurchaseCreateParams::Status }

        # @!attribute tags
        #   Searchable tags associated with the SIM cards
        #
        #   @return [Array<String>, nil]
        optional :tags, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute whitelabel_name
        #   Service Provider Name (SPN) for the Whitelabel eSIM product. It will be
        #   displayed as the mobile service name by operating systems of smartphones. This
        #   parameter must only contain letters, numbers and whitespaces.
        #
        #   @return [String, nil]
        optional :whitelabel_name, String

        # @!method initialize(amount:, product: nil, sim_card_group_id: nil, status: nil, tags: nil, whitelabel_name: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Actions::PurchaseCreateParams} for more details.
        #
        #   @param amount [Integer] The amount of eSIMs to be purchased.
        #
        #   @param product [String] Type of product to be purchased, specify "whitelabel" to use a custom SPN
        #
        #   @param sim_card_group_id [String] The group SIMCardGroup identification. This attribute can be <code>null</code> w
        #
        #   @param status [Symbol, Telnyx::Models::Actions::PurchaseCreateParams::Status] Status on which the SIM cards will be set after being successfully registered.
        #
        #   @param tags [Array<String>] Searchable tags associated with the SIM cards
        #
        #   @param whitelabel_name [String] Service Provider Name (SPN) for the Whitelabel eSIM product. It will be displaye
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Status on which the SIM cards will be set after being successfully registered.
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
