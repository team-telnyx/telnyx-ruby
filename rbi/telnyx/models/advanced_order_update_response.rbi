# typed: strong

module Telnyx
  module Models
    AdvancedOrderUpdateResponse =
      T.let(T.anything, Telnyx::Internal::Type::Converter)
  end
end
