# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        module InsightGroups
          InsightAssignResponse =
            T.let(T.anything, Telnyx::Internal::Type::Converter)
        end
      end
    end
  end
end
