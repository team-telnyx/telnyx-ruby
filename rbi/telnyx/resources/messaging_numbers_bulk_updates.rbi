# typed: strong

module Telnyx
  module Resources
    class MessagingNumbersBulkUpdates
      # Update the messaging profile of multiple phone numbers
      sig do
        params(
          messaging_profile_id: String,
          numbers: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessagingNumbersBulkUpdateCreateResponse)
      end
      def create(
        # Configure the messaging profile these phone numbers are assigned to:
        #
        # - Set this field to `""` to unassign each number from their respective messaging
        #   profile
        # - Set this field to a quoted UUID of a messaging profile to assign these numbers
        #   to that messaging profile
        messaging_profile_id:,
        # The list of phone numbers to update.
        numbers:,
        request_options: {}
      )
      end

      # Retrieve bulk update status
      sig do
        params(
          order_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse)
      end
      def retrieve(
        # Order ID to verify bulk update status.
        order_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
