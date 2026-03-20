# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceDesigns#create
    class VoiceDesignCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute prompt
      #   Natural language description of the voice style, e.g. 'Speak in a warm, friendly
      #   tone with a slight British accent'.
      #
      #   @return [String]
      required :prompt, String

      # @!attribute text
      #   Sample text to synthesize for this voice design.
      #
      #   @return [String]
      required :text, String

      # @!attribute language
      #   Language for synthesis. Supported values: Auto, Chinese, English, Japanese,
      #   Korean, German, French, Russian, Portuguese, Spanish, Italian. Defaults to Auto.
      #
      #   @return [String, nil]
      optional :language, String

      # @!attribute max_new_tokens
      #   Maximum number of tokens to generate. Default: 2048.
      #
      #   @return [Integer, nil]
      optional :max_new_tokens, Integer

      # @!attribute name
      #   Name for the voice design. Required when creating a new design
      #   (`voice_design_id` is not provided); ignored when adding a version. Cannot be a
      #   UUID.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute provider
      #   Voice synthesis provider. `telnyx` uses the Qwen3TTS model; `minimax` uses the
      #   Minimax speech models. Case-insensitive. Defaults to `telnyx`.
      #
      #   @return [Symbol, Telnyx::Models::VoiceDesignCreateParams::Provider, nil]
      optional :provider, enum: -> { Telnyx::VoiceDesignCreateParams::Provider }

      # @!attribute repetition_penalty
      #   Repetition penalty to reduce repeated patterns in generated audio. Default:
      #   1.05.
      #
      #   @return [Float, nil]
      optional :repetition_penalty, Float

      # @!attribute temperature
      #   Sampling temperature controlling randomness. Higher values produce more varied
      #   output. Default: 0.9.
      #
      #   @return [Float, nil]
      optional :temperature, Float

      # @!attribute top_k
      #   Top-k sampling parameter — limits the token vocabulary considered at each step.
      #   Default: 50.
      #
      #   @return [Integer, nil]
      optional :top_k, Integer

      # @!attribute top_p
      #   Top-p (nucleus) sampling parameter — cumulative probability cutoff for token
      #   selection. Default: 1.0.
      #
      #   @return [Float, nil]
      optional :top_p, Float

      # @!attribute voice_design_id
      #   ID of an existing voice design to add a new version to. When provided, a new
      #   version is created instead of a new design.
      #
      #   @return [String, nil]
      optional :voice_design_id, String

      # @!method initialize(prompt:, text:, language: nil, max_new_tokens: nil, name: nil, provider: nil, repetition_penalty: nil, temperature: nil, top_k: nil, top_p: nil, voice_design_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VoiceDesignCreateParams} for more details.
      #
      #   @param prompt [String] Natural language description of the voice style, e.g. 'Speak in a warm, friendly
      #
      #   @param text [String] Sample text to synthesize for this voice design.
      #
      #   @param language [String] Language for synthesis. Supported values: Auto, Chinese, English, Japanese, Kore
      #
      #   @param max_new_tokens [Integer] Maximum number of tokens to generate. Default: 2048.
      #
      #   @param name [String] Name for the voice design. Required when creating a new design (`voice_design_id
      #
      #   @param provider [Symbol, Telnyx::Models::VoiceDesignCreateParams::Provider] Voice synthesis provider. `telnyx` uses the Qwen3TTS model; `minimax` uses the M
      #
      #   @param repetition_penalty [Float] Repetition penalty to reduce repeated patterns in generated audio. Default: 1.05
      #
      #   @param temperature [Float] Sampling temperature controlling randomness. Higher values produce more varied o
      #
      #   @param top_k [Integer] Top-k sampling parameter — limits the token vocabulary considered at each step.
      #
      #   @param top_p [Float] Top-p (nucleus) sampling parameter — cumulative probability cutoff for token sel
      #
      #   @param voice_design_id [String] ID of an existing voice design to add a new version to. When provided, a new ver
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Voice synthesis provider. `telnyx` uses the Qwen3TTS model; `minimax` uses the
      # Minimax speech models. Case-insensitive. Defaults to `telnyx`.
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
