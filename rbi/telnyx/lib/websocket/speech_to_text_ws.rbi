# typed: strong

module Telnyx
  module Lib
    module WebSocket
      class SpeechToTextWS
        sig { returns(Telnyx::Client) }
        attr_reader :client

        sig { returns(SpeechToTextStreamParams) }
        attr_reader :params

        sig { returns(T::Boolean) }
        attr_reader :connected

        sig do
          params(
            client: Telnyx::Client,
            params: SpeechToTextStreamParams
          ).void
        end
        def initialize(client, params)
        end

        sig { params(timeout: Integer).void }
        def wait_for_open(timeout: 30)
        end

        sig { params(audio_data: String).void }
        def send(audio_data)
        end

        sig { void }
        def close
        end

        sig { params(event: String, block: T.proc.void).void }
        def on(event, &block)
        end
      end
    end
  end
end
