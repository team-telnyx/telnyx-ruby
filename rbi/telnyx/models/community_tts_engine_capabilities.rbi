# typed: strong

module Telnyx
  module Models
    class CommunityTtsEngineCapabilities < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CommunityTtsEngineCapabilities,
            Telnyx::Internal::AnyHash
          )
        end

      # Required. `true` when the engine sends audio in small frames as it synthesizes;
      # `false` when it sends one frame per sentence.
      sig { returns(T::Boolean) }
      attr_accessor :streamed_audio

      # The engine speaks the buffered text when a frame carries `"flush": true`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :flush_support

      sig { params(flush_support: T::Boolean).void }
      attr_writer :flush_support

      # The engine supports a restart of the current speech (barge-in).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :force_interrupt_support

      sig { params(force_interrupt_support: T::Boolean).void }
      attr_writer :force_interrupt_support

      # The engine accepts SSML in the text.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :ssml_support

      sig { params(ssml_support: T::Boolean).void }
      attr_writer :ssml_support

      # The settings callers can pass to the engine in `voice_settings`, one entry per
      # setting: `{"type": "number" | "integer", "min", "max"}`, `{"type": "boolean"}`,
      # `{"type": "string"}` (at most 1000 characters) or
      # `{"type": "enum", "values": [...]}`, each with an optional `default`. A caller's
      # settings are checked against it before Telnyx connects to the engine: an
      # undeclared setting, a value of the wrong type, or a value out of bounds is
      # refused. An engine that declares none receives the settings as sent.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :voice_settings_schema

      # What the engine supports. An unknown key is rejected.
      sig do
        params(
          streamed_audio: T::Boolean,
          flush_support: T::Boolean,
          force_interrupt_support: T::Boolean,
          ssml_support: T::Boolean,
          voice_settings_schema: T.nilable(T::Hash[Symbol, T.anything])
        ).returns(T.attached_class)
      end
      def self.new(
        # Required. `true` when the engine sends audio in small frames as it synthesizes;
        # `false` when it sends one frame per sentence.
        streamed_audio:,
        # The engine speaks the buffered text when a frame carries `"flush": true`.
        flush_support: nil,
        # The engine supports a restart of the current speech (barge-in).
        force_interrupt_support: nil,
        # The engine accepts SSML in the text.
        ssml_support: nil,
        # The settings callers can pass to the engine in `voice_settings`, one entry per
        # setting: `{"type": "number" | "integer", "min", "max"}`, `{"type": "boolean"}`,
        # `{"type": "string"}` (at most 1000 characters) or
        # `{"type": "enum", "values": [...]}`, each with an optional `default`. A caller's
        # settings are checked against it before Telnyx connects to the engine: an
        # undeclared setting, a value of the wrong type, or a value out of bounds is
        # refused. An engine that declares none receives the settings as sent.
        voice_settings_schema: nil
      )
      end

      sig do
        override.returns(
          {
            streamed_audio: T::Boolean,
            flush_support: T::Boolean,
            force_interrupt_support: T::Boolean,
            ssml_support: T::Boolean,
            voice_settings_schema: T.nilable(T::Hash[Symbol, T.anything])
          }
        )
      end
      def to_hash
      end
    end
  end
end
