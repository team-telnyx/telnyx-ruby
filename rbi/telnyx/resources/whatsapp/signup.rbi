# typed: strong

module Telnyx
  module Resources
    class Whatsapp
      class Signup
        # List finished WhatsApp Embedded Signup sessions, with status `SUCCESS` or
        # `FAILURE`, newest first. Use the `errors` of a failed session to see why
        # provisioning stopped.
        sig do
          params(
            filter_created_at_gte: Time,
            filter_created_at_lte: Time,
            filter_customer_id: String,
            filter_waba_id: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::Whatsapp::SignupListResponse
            ]
          )
        end
        def list(
          # Return sessions created at or after this time (RFC 3339)
          filter_created_at_gte: nil,
          # Return sessions created at or before this time (RFC 3339)
          filter_created_at_lte: nil,
          # Filter by the tech provider customer reference
          filter_customer_id: nil,
          # Filter by Meta WABA ID
          filter_waba_id: nil,
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        # Retrieve the current state and status of a WhatsApp Embedded Signup session.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse)
        end
        def retrieve_status(
          # Signup session ID
          id,
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
end
