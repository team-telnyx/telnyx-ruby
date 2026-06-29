# typed: strong

module Telnyx
  module Lib
    module WebSocket
      class SpeechToTextStreamParams
        sig { returns(String) }
        attr_accessor :transcription_engine

        sig { returns(String) }
        attr_accessor :input_format

        sig { returns(String) }
        attr_accessor :language

        sig { returns(T.nilable(Integer)) }
        attr_accessor :sample_rate

        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :interim_results

        sig { returns(T.nilable(String)) }
        attr_accessor :client_ref

        sig do
          params(
            transcription_engine: String,
            input_format: String,
            language: String,
            sample_rate: T.nilable(Integer),
            interim_results: T.nilable(T::Boolean),
            client_ref: T.nilable(String)
          ).void
        end
        def initialize(
          transcription_engine: "Deepgram",
          input_format: "wav",
          language: "en-US",
          sample_rate: nil,
          interim_results: nil,
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
