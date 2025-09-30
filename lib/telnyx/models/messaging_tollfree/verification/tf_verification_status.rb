# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # Tollfree verification status
        module TfVerificationStatus
          extend Telnyx::Internal::Type::Enum

          VERIFIED = :Verified
          REJECTED = :Rejected
          WAITING_FOR_VENDOR = :"Waiting For Vendor"
          WAITING_FOR_CUSTOMER = :"Waiting For Customer"
          WAITING_FOR_TELNYX = :"Waiting For Telnyx"
          IN_PROGRESS = :"In Progress"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
