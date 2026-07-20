# typed: strong

module Telnyx
  module Models
    module AI
      module Anthropic
        V1MessagesResponse =
          T.let(
            Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
            Telnyx::Internal::Type::Converter
          )
      end
    end
  end
end
