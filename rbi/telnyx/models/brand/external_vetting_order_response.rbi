# typed: strong

module Telnyx
  module Models
    module Brand
      ExternalVettingOrderResponse =
        T.let(T.anything, Telnyx::Internal::Type::Converter)
    end
  end
end
