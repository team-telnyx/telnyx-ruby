# typed: strong

module Telnyx
  module Models
    module Campaign
      OsrGetAttributesResponse =
        T.let(T.anything, Telnyx::Internal::Type::Converter)
    end
  end
end
