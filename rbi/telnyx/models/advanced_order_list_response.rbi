# typed: strong

module Telnyx
  module Models
    AdvancedOrderListResponse =
      T.let(T.anything, Telnyx::Internal::Type::Converter)
  end
end
