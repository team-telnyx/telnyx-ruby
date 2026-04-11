# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceClones#create
    class VoiceCloneCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute gender
      #   Gender of the voice clone.
      #
      #   @return [Symbol, Telnyx::Models::VoiceCloneCreateParams::Gender]
      required :gender, enum: -> { Telnyx::VoiceCloneCreateParams::Gender }

      # @!attribute language
      #   ISO 639-1 language code for the clone (e.g. `en`, `fr`, `de`).
      #
      #   @return [String]
      required :language, String

      # @!attribute name
      #   Name for the voice clone.
      #
      #   @return [String]
      required :name, String

      # @!attribute voice_design_id
      #   UUID of the source voice design to clone.
      #
      #   @return [String]
      required :voice_design_id, String

      # @!attribute provider
      #   Voice synthesis provider. Case-insensitive. Defaults to `telnyx`.
      #
      #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromDesignParams::Provider, nil]
      optional :provider, enum: -> { Telnyx::VoiceCloneCreateFromDesignParams::Provider }

      # @!method initialize(gender:, language:, name:, voice_design_id:, provider: nil, request_options: {})
      #   @param gender [Symbol, Telnyx::Models::VoiceCloneCreateParams::Gender] Gender of the voice clone.
      #
      #   @param language [String] ISO 639-1 language code for the clone (e.g. `en`, `fr`, `de`).
      #
      #   @param name [String] Name for the voice clone.
      #
      #   @param voice_design_id [String] UUID of the source voice design to clone.
      #
      #   @param provider [Symbol, Telnyx::Models::VoiceCloneCreateFromDesignParams::Provider] Voice synthesis provider. Case-insensitive. Defaults to `telnyx`.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Gender of the voice clone.
      module Gender
        extend Telnyx::Internal::Type::Enum

        MALE = :male
        FEMALE = :female
        NEUTRAL = :neutral

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Voice synthesis provider. Case-insensitive. Defaults to `telnyx`.
      module Provider
        extend Telnyx::Internal::Type::Enum

        TELNYX = :telnyx
        TELNYX_2 = :Telnyx
        MINIMAX = :minimax
        MINIMAX_2 = :Minimax

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
