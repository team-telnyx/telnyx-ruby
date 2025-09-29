# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        InsightDeleteResponse =
          T.let(T.anything, Telnyx::Internal::Type::Converter)
      end
    end
  end
end
