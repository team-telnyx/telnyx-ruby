# typed: strong

module Telnyx
  module Lib
    module WebSocket
      class SttServerEvent
        sig { returns(String) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_accessor :transcript

        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :is_final

        sig { returns(T.nilable(Float)) }
        attr_accessor :confidence

        sig { returns(T.nilable(String)) }
        attr_accessor :error

        sig { returns(T::Hash[Symbol, T.untyped]) }
        attr_accessor :raw_data

        sig { params(data: T::Hash[Symbol, T.untyped]).void }
        def initialize(data)
        end

        sig { params(json: String).returns(SttServerEvent) }
        def self.from_json(json)
        end

        sig { returns(T::Boolean) }
        def transcript?
        end

        sig { returns(T::Boolean) }
        def error?
        end
      end
    end
  end
end
