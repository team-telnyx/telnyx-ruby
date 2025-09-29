# typed: strong

module Telnyx
  module Models
    module Brand
      ExternalVettingListResponse =
        T.let(T.anything, Telnyx::Internal::Type::Converter)
    end
  end
end
