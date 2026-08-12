# typed: strong

module Telnyx
  module Models
    module Rcs
      module Agents
        TestDeviceListResponse =
          T.let(
            Telnyx::Internal::Type::ArrayOf[
              Telnyx::Rcs::Agents::TestDeviceResponse
            ],
            Telnyx::Internal::Type::Converter
          )
      end
    end
  end
end
