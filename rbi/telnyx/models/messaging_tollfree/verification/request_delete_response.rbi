# typed: strong

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        RequestDeleteResponse =
          T.let(T.anything, Telnyx::Internal::Type::Converter)
      end
    end
  end
end
