# typed: strong

module Telnyx
  module Models
    module AI
      ChatCreateCompletionResponse =
        T.let(
          Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
          Telnyx::Internal::Type::Converter
        )
    end
  end
end
