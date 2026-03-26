# typed: strong

module Telnyx
  module Lib
    module WebSocket
      class WebSocketError < StandardError
        sig { returns(T.nilable(T::Hash[Symbol, T.untyped])) }
        attr_accessor :raw_data

        sig { returns(T.nilable(StandardError)) }
        attr_accessor :cause

        sig do
          params(
            message: String,
            raw_data: T.nilable(T::Hash[Symbol, T.untyped]),
            cause: T.nilable(StandardError)
          ).void
        end
        def initialize(message, raw_data: nil, cause: nil)
        end
      end
    end
  end
end
