# typed: strong

module Telnyx
  module Lib
    module WebSocket
      class TextToSpeechStreamParams
        sig { returns(T.nilable(String)) }
        attr_accessor :voice

        sig { returns(T.nilable(String)) }
        attr_accessor :voice_provider

        sig { returns(T.nilable(String)) }
        attr_accessor :output_format

        sig { returns(T.nilable(Integer)) }
        attr_accessor :sample_rate

        sig { returns(T.nilable(String)) }
        attr_accessor :language

        sig { returns(T.nilable(Float)) }
        attr_accessor :speaking_rate

        sig { returns(T.nilable(String)) }
        attr_accessor :client_ref

        sig do
          params(
            voice: T.nilable(String),
            voice_provider: T.nilable(String),
            output_format: T.nilable(String),
            sample_rate: T.nilable(Integer),
            language: T.nilable(String),
            speaking_rate: T.nilable(Float),
            client_ref: T.nilable(String)
          ).void
        end
        def initialize(
          voice: nil,
          voice_provider: nil,
          output_format: nil,
          sample_rate: nil,
          language: nil,
          speaking_rate: nil,
          client_ref: nil
        )
        end

        sig { returns(T::Hash[String, String]) }
        def to_query_params
        end

        sig { returns(String) }
        def to_query_string
        end
      end
    end
  end
end
