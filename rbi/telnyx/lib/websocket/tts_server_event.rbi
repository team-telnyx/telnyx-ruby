# typed: strong

module Telnyx
  module Lib
    module WebSocket
      class TtsServerEvent
        sig { returns(String) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_accessor :audio

        sig { returns(T.nilable(String)) }
        attr_accessor :text

        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :is_final

        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :cached

        sig { returns(T.nilable(Integer)) }
        attr_accessor :time_to_first_audio_frame_ms

        sig { returns(T.nilable(String)) }
        attr_accessor :error

        sig { returns(T::Hash[Symbol, T.untyped]) }
        attr_accessor :raw_data

        sig { params(data: T::Hash[Symbol, T.untyped]).void }
        def initialize(data)
        end

        sig { params(json: String).returns(TtsServerEvent) }
        def self.from_json(json)
        end

        sig { returns(T::Boolean) }
        def audio_chunk?
        end

        sig { returns(T::Boolean) }
        def final?
        end

        sig { returns(T::Boolean) }
        def error?
        end

        sig { returns(T.nilable(String)) }
        def audio_bytes
        end
      end
    end
  end
end
