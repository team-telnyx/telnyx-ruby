# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceClones#create
    class VoiceCloneCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute body
      #   Request body for creating a voice clone from an existing voice design.
      #
      #   @return [Telnyx::Models::VoiceCloneCreateParams::Body::TelnyxDesignClone, Telnyx::Models::VoiceCloneCreateParams::Body::MinimaxDesignClone]
      required :body, union: -> { Telnyx::VoiceCloneCreateParams::Body }

      # @!method initialize(body:, request_options: {})
      #   @param body [Telnyx::Models::VoiceCloneCreateParams::Body::TelnyxDesignClone, Telnyx::Models::VoiceCloneCreateParams::Body::MinimaxDesignClone] Request body for creating a voice clone from an existing voice design.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Request body for creating a voice clone from an existing voice design.
      module Body
        extend Telnyx::Internal::Type::Union

        discriminator :provider

        # Create a voice clone from a voice design using the Telnyx provider.
        variant -> { Telnyx::VoiceCloneCreateParams::Body::TelnyxDesignClone }

        # Create a voice clone from a voice design using the Minimax provider.
        variant -> { Telnyx::VoiceCloneCreateParams::Body::MinimaxDesignClone }

        class TelnyxDesignClone < Telnyx::Internal::Type::BaseModel
          # @!attribute gender
          #   Gender of the voice clone.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateParams::Body::TelnyxDesignClone::Gender]
          required :gender, enum: -> { Telnyx::VoiceCloneCreateParams::Body::TelnyxDesignClone::Gender }

          # @!attribute language
          #   ISO 639-1 language code for the clone. Supports the combined Telnyx language
          #   set.
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
          #   Voice synthesis provider. Defaults to `telnyx`.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateParams::Body::TelnyxDesignClone::Provider, nil]
          optional :provider, enum: -> { Telnyx::VoiceCloneCreateParams::Body::TelnyxDesignClone::Provider }

          # @!method initialize(gender:, language:, name:, voice_design_id:, provider: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::VoiceCloneCreateParams::Body::TelnyxDesignClone} for more
          #   details.
          #
          #   Create a voice clone from a voice design using the Telnyx provider.
          #
          #   @param gender [Symbol, Telnyx::Models::VoiceCloneCreateParams::Body::TelnyxDesignClone::Gender] Gender of the voice clone.
          #
          #   @param language [String] ISO 639-1 language code for the clone. Supports the combined Telnyx language set
          #
          #   @param name [String] Name for the voice clone.
          #
          #   @param voice_design_id [String] UUID of the source voice design to clone.
          #
          #   @param provider [Symbol, Telnyx::Models::VoiceCloneCreateParams::Body::TelnyxDesignClone::Provider] Voice synthesis provider. Defaults to `telnyx`.

          # Gender of the voice clone.
          #
          # @see Telnyx::Models::VoiceCloneCreateParams::Body::TelnyxDesignClone#gender
          module Gender
            extend Telnyx::Internal::Type::Enum

            MALE = :male
            FEMALE = :female
            NEUTRAL = :neutral

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Voice synthesis provider. Defaults to `telnyx`.
          #
          # @see Telnyx::Models::VoiceCloneCreateParams::Body::TelnyxDesignClone#provider
          module Provider
            extend Telnyx::Internal::Type::Enum

            TELNYX = :telnyx
            TELNYX_2 = :Telnyx

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class MinimaxDesignClone < Telnyx::Internal::Type::BaseModel
          # @!attribute gender
          #   Gender of the voice clone.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateParams::Body::MinimaxDesignClone::Gender]
          required :gender, enum: -> { Telnyx::VoiceCloneCreateParams::Body::MinimaxDesignClone::Gender }

          # @!attribute language
          #   ISO 639-1 language code for the clone. Supports the Minimax language set.
          #
          #   @return [String]
          required :language, String

          # @!attribute name
          #   Name for the voice clone.
          #
          #   @return [String]
          required :name, String

          # @!attribute provider
          #   Voice synthesis provider. Must be `minimax`.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateParams::Body::MinimaxDesignClone::Provider]
          required :provider, enum: -> { Telnyx::VoiceCloneCreateParams::Body::MinimaxDesignClone::Provider }

          # @!attribute voice_design_id
          #   UUID of the source voice design to clone.
          #
          #   @return [String]
          required :voice_design_id, String

          # @!method initialize(gender:, language:, name:, provider:, voice_design_id:)
          #   Create a voice clone from a voice design using the Minimax provider.
          #
          #   @param gender [Symbol, Telnyx::Models::VoiceCloneCreateParams::Body::MinimaxDesignClone::Gender] Gender of the voice clone.
          #
          #   @param language [String] ISO 639-1 language code for the clone. Supports the Minimax language set.
          #
          #   @param name [String] Name for the voice clone.
          #
          #   @param provider [Symbol, Telnyx::Models::VoiceCloneCreateParams::Body::MinimaxDesignClone::Provider] Voice synthesis provider. Must be `minimax`.
          #
          #   @param voice_design_id [String] UUID of the source voice design to clone.

          # Gender of the voice clone.
          #
          # @see Telnyx::Models::VoiceCloneCreateParams::Body::MinimaxDesignClone#gender
          module Gender
            extend Telnyx::Internal::Type::Enum

            MALE = :male
            FEMALE = :female
            NEUTRAL = :neutral

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Voice synthesis provider. Must be `minimax`.
          #
          # @see Telnyx::Models::VoiceCloneCreateParams::Body::MinimaxDesignClone#provider
          module Provider
            extend Telnyx::Internal::Type::Enum

            MINIMAX = :minimax
            MINIMAX_2 = :Minimax

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::VoiceCloneCreateParams::Body::TelnyxDesignClone, Telnyx::Models::VoiceCloneCreateParams::Body::MinimaxDesignClone)]
      end
    end
  end
end
