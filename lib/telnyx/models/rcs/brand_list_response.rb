# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      # @type [Telnyx::Internal::Type::Converter]
      BrandListResponse = Telnyx::Internal::Type::ArrayOf[-> { Telnyx::Rcs::BrandResponse }]
    end
  end
end
