# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      module Brand
        ExternalVettingListResponse =
          T.let(
            Telnyx::Internal::Type::ArrayOf[
              Telnyx::Messaging10dlc::Brand::BrandExternalVetting
            ],
            Telnyx::Internal::Type::Converter
          )
      end
    end
  end
end
