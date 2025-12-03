# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # Message Volume Enums
        module Volume
          extend Telnyx::Internal::Type::Enum

          VOLUME_10 = :"10"
          VOLUME_100 = :"100"
          VOLUME_1_000 = :"1,000"
          VOLUME_10_000 = :"10,000"
          VOLUME_100_000 = :"100,000"
          VOLUME_250_000 = :"250,000"
          VOLUME_500_000 = :"500,000"
          VOLUME_750_000 = :"750,000"
          VOLUME_1_000_000 = :"1,000,000"
          VOLUME_5_000_000 = :"5,000,000"
          VOLUME_10_000_000 = :"10,000,000+"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
