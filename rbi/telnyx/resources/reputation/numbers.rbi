# typed: strong

module Telnyx
  module Resources
    class Reputation
      # Associate phone numbers with an enterprise for reputation monitoring and
      # retrieve reputation scores
      class Numbers
        # Get reputation data for a specific phone number without requiring an
        # `enterprise_id`.
        #
        # Same response as the enterprise-scoped endpoint. Uses cached data by default.
        sig do
          params(
            phone_number: String,
            fresh: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Reputation::NumberRetrieveResponse)
        end
        def retrieve(
          # Phone number in E.164 format
          phone_number,
          # When true, fetches fresh reputation data (incurs API cost). When false, returns
          # cached data.
          fresh: nil,
          request_options: {}
        )
        end

        # List all phone numbers enrolled in Number Reputation monitoring for your
        # account. This is a simplified endpoint that does not require an `enterprise_id`
        # — it returns numbers across all your enterprises.
        #
        # Supports pagination and filtering by phone number.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            phone_number: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::ReputationPhoneNumberWithReputationData
            ]
          )
        end
        def list(
          # Page number (1-indexed)
          page_number: nil,
          # Number of items per page
          page_size: nil,
          # Filter by specific phone number (E.164 format)
          phone_number: nil,
          request_options: {}
        )
        end

        # Remove a phone number from Number Reputation monitoring without requiring an
        # `enterprise_id`.
        sig do
          params(
            phone_number: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Phone number in E.164 format
          phone_number,
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
