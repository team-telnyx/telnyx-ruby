# typed: strong

module Telnyx
  module Models
    class VoiceDesignCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::VoiceDesignCreateParams, Telnyx::Internal::AnyHash)
        end

      # Natural language description of the voice style, e.g. 'Speak in a warm, friendly
      # tone with a slight British accent'.
      sig { returns(String) }
      attr_accessor :prompt

      # Sample text to synthesize for this voice design.
      sig { returns(String) }
      attr_accessor :text

      # Language for synthesis. Supported values: Auto, Chinese, English, Japanese,
      # Korean, German, French, Russian, Portuguese, Spanish, Italian. Defaults to Auto.
      sig { returns(T.nilable(String)) }
      attr_reader :language

      sig { params(language: String).void }
      attr_writer :language

      # Maximum number of tokens to generate. Default: 2048.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_new_tokens

      sig { params(max_new_tokens: Integer).void }
      attr_writer :max_new_tokens

      # Name for the voice design. Required when creating a new design
      # (`voice_design_id` is not provided); ignored when adding a version. Cannot be a
      # UUID.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Repetition penalty to reduce repeated patterns in generated audio. Default:
      # 1.05.
      sig { returns(T.nilable(Float)) }
      attr_reader :repetition_penalty

      sig { params(repetition_penalty: Float).void }
      attr_writer :repetition_penalty

      # Sampling temperature controlling randomness. Higher values produce more varied
      # output. Default: 0.9.
      sig { returns(T.nilable(Float)) }
      attr_reader :temperature

      sig { params(temperature: Float).void }
      attr_writer :temperature

      # Top-k sampling parameter — limits the token vocabulary considered at each step.
      # Default: 50.
      sig { returns(T.nilable(Integer)) }
      attr_reader :top_k

      sig { params(top_k: Integer).void }
      attr_writer :top_k

      # Top-p (nucleus) sampling parameter — cumulative probability cutoff for token
      # selection. Default: 1.0.
      sig { returns(T.nilable(Float)) }
      attr_reader :top_p

      sig { params(top_p: Float).void }
      attr_writer :top_p

      # ID of an existing voice design to add a new version to. When provided, a new
      # version is created instead of a new design.
      sig { returns(T.nilable(String)) }
      attr_reader :voice_design_id

      sig { params(voice_design_id: String).void }
      attr_writer :voice_design_id

      sig do
        params(
          prompt: String,
          text: String,
          language: String,
          max_new_tokens: Integer,
          name: String,
          repetition_penalty: Float,
          temperature: Float,
          top_k: Integer,
          top_p: Float,
          voice_design_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Natural language description of the voice style, e.g. 'Speak in a warm, friendly
        # tone with a slight British accent'.
        prompt:,
        # Sample text to synthesize for this voice design.
        text:,
        # Language for synthesis. Supported values: Auto, Chinese, English, Japanese,
        # Korean, German, French, Russian, Portuguese, Spanish, Italian. Defaults to Auto.
        language: nil,
        # Maximum number of tokens to generate. Default: 2048.
        max_new_tokens: nil,
        # Name for the voice design. Required when creating a new design
        # (`voice_design_id` is not provided); ignored when adding a version. Cannot be a
        # UUID.
        name: nil,
        # Repetition penalty to reduce repeated patterns in generated audio. Default:
        # 1.05.
        repetition_penalty: nil,
        # Sampling temperature controlling randomness. Higher values produce more varied
        # output. Default: 0.9.
        temperature: nil,
        # Top-k sampling parameter — limits the token vocabulary considered at each step.
        # Default: 50.
        top_k: nil,
        # Top-p (nucleus) sampling parameter — cumulative probability cutoff for token
        # selection. Default: 1.0.
        top_p: nil,
        # ID of an existing voice design to add a new version to. When provided, a new
        # version is created instead of a new design.
        voice_design_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            prompt: String,
            text: String,
            language: String,
            max_new_tokens: Integer,
            name: String,
            repetition_penalty: Float,
            temperature: Float,
            top_k: Integer,
            top_p: Float,
            voice_design_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
