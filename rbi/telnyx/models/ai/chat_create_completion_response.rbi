# typed: strong

module Telnyx
  module Models
    module AI
      ChatCreateCompletionResponse =
        T.let(T.anything, Telnyx::Internal::Type::Converter)
    end
  end
end
