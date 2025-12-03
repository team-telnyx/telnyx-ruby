# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # Message Volume Enums
        module Volume
          extend Telnyx::Internal::Type::Enum

          V_10 = :"10"
          V_100 = :"100"
          V_1000 = :"1,000"
          V_10000 = :"10,000"
          V_100000 = :"100,000"
          V_250000 = :"250,000"
          V_500000 = :"500,000"
          V_750000 = :"750,000"
          V_1000000 = :"1,000,000"
          V_5000000 = :"5,000,000"
          V_10000000_PLUS = :"10,000,000+"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
