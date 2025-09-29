# typed: strong

module Telnyx
  module Models
    AdvancedOrderRetrieveResponse =
      T.let(T.anything, Telnyx::Internal::Type::Converter)
  end
end
