# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # Comment categorisation. Customers post `customer_inquiry`. The Telnyx team posts
      # `vetting_comment`, `rejection_reason`, `notification`, `status_update`, or
      # `admin_response`. `internal_note` is filtered out of customer-visible responses.
      module CommentType
        extend Telnyx::Internal::Type::Enum

        VETTING_COMMENT = :vetting_comment
        REJECTION_REASON = :rejection_reason
        INTERNAL_NOTE = :internal_note
        NOTIFICATION = :notification
        STATUS_UPDATE = :status_update
        CUSTOMER_INQUIRY = :customer_inquiry
        ADMIN_RESPONSE = :admin_response

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
