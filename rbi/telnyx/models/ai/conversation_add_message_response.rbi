# typed: strong

module Telnyx
  module Models
    module AI
      ConversationAddMessageResponse =
        T.let(T.anything, Telnyx::Internal::Type::Converter)
    end
  end
end
