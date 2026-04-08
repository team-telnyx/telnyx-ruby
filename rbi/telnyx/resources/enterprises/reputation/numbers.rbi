# typed: strong

module Telnyx
  module Resources
    class Enterprises
      class Reputation
        # Associate phone numbers with an enterprise for reputation monitoring and
        # retrieve reputation scores
        class Numbers
          # Associate one or more phone numbers with an enterprise for Number Reputation
          # monitoring.
          #
          # **Validations:**
          #
          # - Phone numbers must be in E.164 format (e.g., `+16035551234`)
          # - Phone numbers must be in-service and belong to your account (verified via
          #   Warehouse)
          # - Phone numbers must be US local numbers
          # - Phone numbers cannot already be associated with any enterprise
          #
          # **Note:** This operation is atomic — if any number fails validation, the entire
          # request fails.
          #
          # **Maximum:** 100 phone numbers per request.
          sig do
            params(
              enterprise_id: String,
              phone_numbers: T::Array[String],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Enterprises::Reputation::NumberCreateResponse
            )
          end
          def create(
            # Unique identifier of the enterprise (UUID)
            enterprise_id,
            # List of phone numbers to associate for reputation monitoring (max 100)
            phone_numbers:,
            request_options: {}
          )
          end

          # Get detailed reputation data for a specific phone number associated with an
          # enterprise.
          #
          # **Query Parameters:**
          #
          # - `fresh` (default: `false`): When `true`, fetches fresh reputation data (incurs
          #   API cost). When `false`, returns cached data. If no cached data exists, fresh
          #   data is automatically fetched.
          #
          # **Returns:**
          #
          # - `spam_risk`: Overall spam risk level (`low`, `medium`, `high`)
          # - `spam_category`: Spam category classification
          # - `maturity_score`: Maturity metric (0–100)
          # - `connection_score`: Connection quality metric (0–100)
          # - `engagement_score`: Engagement metric (0–100)
          # - `sentiment_score`: Sentiment metric (0–100)
          # - `last_refreshed_at`: Timestamp of last data refresh
          sig do
            params(
              phone_number: String,
              enterprise_id: String,
              fresh: T::Boolean,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse
            )
          end
          def retrieve(
            # Path param: Phone number in E.164 format
            phone_number,
            # Path param: Unique identifier of the enterprise (UUID)
            enterprise_id:,
            # Query param: When true, fetches fresh reputation data (incurs API cost). When
            # false, returns cached data.
            fresh: nil,
            request_options: {}
          )
          end

          # List all phone numbers associated with an enterprise for Number Reputation
          # monitoring.
          #
          # Returns phone numbers with their cached reputation data (if available). Supports
          # pagination and filtering by phone number.
          sig do
            params(
              enterprise_id: String,
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
            # Unique identifier of the enterprise (UUID)
            enterprise_id,
            # Page number (1-indexed)
            page_number: nil,
            # Number of items per page
            page_size: nil,
            # Filter by specific phone number (E.164 format)
            phone_number: nil,
            request_options: {}
          )
          end

          # Remove a phone number from Number Reputation monitoring for an enterprise.
          #
          # The number will no longer be tracked and reputation data will no longer be
          # refreshed.
          sig do
            params(
              phone_number: String,
              enterprise_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete(
            # Phone number in E.164 format
            phone_number,
            # Unique identifier of the enterprise (UUID)
            enterprise_id:,
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
end
