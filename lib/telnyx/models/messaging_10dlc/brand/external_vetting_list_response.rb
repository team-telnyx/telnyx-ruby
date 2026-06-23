# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      module Brand
        # @type [Telnyx::Internal::Type::Converter]
        ExternalVettingListResponse =
          Telnyx::Internal::Type::ArrayOf[-> { Telnyx::Messaging10dlc::Brand::BrandExternalVetting }]
      end
    end
  end
end
