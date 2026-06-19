# typed: strong

module Telnyx
  module Lib
    module WebSocket
      class TextToSpeechWS
        sig { returns(Telnyx::Client) }
        attr_reader :client

        sig { returns(TextToSpeechStreamParams) }
        attr_reader :params

        sig { returns(T::Boolean) }
        attr_reader :connected

        sig do
          params(
            client: Telnyx::Client,
            params: TextToSpeechStreamParams
          ).void
        end
        def initialize(client, params)
        end

        sig { params(timeout: Integer).void }
        def wait_for_open(timeout: 30)
        end

        sig { params(text: String, is_final: T::Boolean).void }
        def send_text(text, is_final: false)
        end

        sig { void }
        def flush
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
