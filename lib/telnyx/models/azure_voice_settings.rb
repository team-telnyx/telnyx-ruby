# frozen_string_literal: true

module Telnyx
  module Models
    class AzureVoiceSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute type
      #   Voice settings provider type
      #
      #   @return [Symbol, Telnyx::Models::AzureVoiceSettings::Type]
      required :type, enum: -> { Telnyx::AzureVoiceSettings::Type }

      # @!attribute api_key_ref
      #   The `identifier` for an integration secret that refers to your Azure Speech API
      #   key.
      #
      #   @return [String, nil]
      optional :api_key_ref, String

      # @!attribute deployment_id
      #   The deployment ID for a custom Azure neural voice.
      #
      #   @return [String, nil]
      optional :deployment_id, String

      # @!attribute effect
      #   Audio effect to apply.
      #
      #   @return [Symbol, Telnyx::Models::AzureVoiceSettings::Effect, nil]
      optional :effect, enum: -> { Telnyx::AzureVoiceSettings::Effect }

      # @!attribute gender
      #   Voice gender filter.
      #
      #   @return [Symbol, Telnyx::Models::AzureVoiceSettings::Gender, nil]
      optional :gender, enum: -> { Telnyx::AzureVoiceSettings::Gender }

      # @!attribute region
      #   The Azure region for the Speech service (e.g., `eastus`, `westeurope`). Required
      #   when using a custom API key.
      #
      #   @return [String, nil]
      optional :region, String

      # @!method initialize(type:, api_key_ref: nil, deployment_id: nil, effect: nil, gender: nil, region: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AzureVoiceSettings} for more details.
      #
      #   @param type [Symbol, Telnyx::Models::AzureVoiceSettings::Type] Voice settings provider type
      #
      #   @param api_key_ref [String] The `identifier` for an integration secret that refers to your Azure Speech API
      #
      #   @param deployment_id [String] The deployment ID for a custom Azure neural voice.
      #
      #   @param effect [Symbol, Telnyx::Models::AzureVoiceSettings::Effect] Audio effect to apply.
      #
      #   @param gender [Symbol, Telnyx::Models::AzureVoiceSettings::Gender] Voice gender filter.
      #
      #   @param region [String] The Azure region for the Speech service (e.g., `eastus`, `westeurope`). Required

      # Voice settings provider type
      #
      # @see Telnyx::Models::AzureVoiceSettings#type
      module Type
        extend Telnyx::Internal::Type::Enum

        AZURE = :azure

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Audio effect to apply.
      #
      # @see Telnyx::Models::AzureVoiceSettings#effect
      module Effect
        extend Telnyx::Internal::Type::Enum

        EQ_CAR = :eq_car
        EQ_TELECOMHP8K = :eq_telecomhp8k

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Voice gender filter.
      #
      # @see Telnyx::Models::AzureVoiceSettings#gender
      module Gender
        extend Telnyx::Internal::Type::Enum

        MALE = :Male
        FEMALE = :Female

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
