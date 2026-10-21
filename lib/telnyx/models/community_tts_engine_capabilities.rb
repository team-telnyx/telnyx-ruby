# frozen_string_literal: true

module Telnyx
  module Models
    class CommunityTtsEngineCapabilities < Telnyx::Internal::Type::BaseModel
      # @!attribute streamed_audio
      #   Required. `true` when the engine sends audio in small frames as it synthesizes;
      #   `false` when it sends one frame per sentence.
      #
      #   @return [Boolean]
      required :streamed_audio, Telnyx::Internal::Type::Boolean

      # @!attribute flush_support
      #   The engine speaks the buffered text when a frame carries `"flush": true`.
      #
      #   @return [Boolean, nil]
      optional :flush_support, Telnyx::Internal::Type::Boolean

      # @!attribute force_interrupt_support
      #   The engine supports a restart of the current speech (barge-in).
      #
      #   @return [Boolean, nil]
      optional :force_interrupt_support, Telnyx::Internal::Type::Boolean

      # @!attribute ssml_support
      #   The engine accepts SSML in the text.
      #
      #   @return [Boolean, nil]
      optional :ssml_support, Telnyx::Internal::Type::Boolean

      # @!attribute voice_settings_schema
      #   The settings callers can pass to the engine in `voice_settings`, one entry per
      #   setting: `{"type": "number" | "integer", "min", "max"}`, `{"type": "boolean"}`,
      #   `{"type": "string"}` (at most 1000 characters) or
      #   `{"type": "enum", "values": [...]}`, each with an optional `default`. A caller's
      #   settings are checked against it before Telnyx connects to the engine: an
      #   undeclared setting, a value of the wrong type, or a value out of bounds is
      #   refused. An engine that declares none receives the settings as sent.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :voice_settings_schema,
               Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
               nil?: true

      # @!method initialize(streamed_audio:, flush_support: nil, force_interrupt_support: nil, ssml_support: nil, voice_settings_schema: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CommunityTtsEngineCapabilities} for more details.
      #
      #   What the engine supports. An unknown key is rejected.
      #
      #   @param streamed_audio [Boolean] Required. `true` when the engine sends audio in small frames as it synthesizes;
      #
      #   @param flush_support [Boolean] The engine speaks the buffered text when a frame carries `"flush": true`.
      #
      #   @param force_interrupt_support [Boolean] The engine supports a restart of the current speech (barge-in).
      #
      #   @param ssml_support [Boolean] The engine accepts SSML in the text.
      #
      #   @param voice_settings_schema [Hash{Symbol=>Object}, nil] The settings callers can pass to the engine in `voice_settings`, one entry per s
    end
  end
end
