# typed: strong

module Telnyx
  module Resources
    class ExternalConnections
      class Uploads
        # Creates a new Upload request to Microsoft teams with the included phone numbers.
        # Only one of civic_address_id or location_id must be provided, not both. The
        # maximum allowed phone numbers for the numbers_ids array is 1000.
        sig do
          params(
            id: String,
            number_ids: T::Array[String],
            additional_usages:
              T::Array[
                Telnyx::ExternalConnections::UploadCreateParams::AdditionalUsage::OrSymbol
              ],
            civic_address_id: String,
            location_id: String,
            usage:
              Telnyx::ExternalConnections::UploadCreateParams::Usage::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::ExternalConnections::UploadCreateResponse)
        end
        def create(
          # Identifies the resource.
          id,
          number_ids:,
          additional_usages: nil,
          # Identifies the civic address to assign all phone numbers to.
          civic_address_id: nil,
          # Identifies the location to assign all phone numbers to.
          location_id: nil,
          # The use case of the upload request. NOTE: `calling_user_assignment` is not
          # supported for toll free numbers.
          usage: nil,
          request_options: {}
        )
        end

        # Return the details of an Upload request and its phone numbers.
        sig do
          params(
            ticket_id: String,
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::ExternalConnections::UploadRetrieveResponse)
        end
        def retrieve(
          # Identifies an Upload request
          ticket_id,
          # Identifies the resource.
          id:,
          request_options: {}
        )
        end

        # Returns a list of your Upload requests for the given external connection.
        sig do
          params(
            id: String,
            filter:
              Telnyx::ExternalConnections::UploadListParams::Filter::OrHash,
            page: Telnyx::ExternalConnections::UploadListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::ExternalConnections::UploadListResponse)
        end
        def list(
          # Identifies the resource.
          id,
          # Filter parameter for uploads (deepObject style). Supports filtering by status,
          # civic_address_id, location_id, and phone_number with eq/contains operations.
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          request_options: {}
        )
        end

        # Returns the count of all pending upload requests for the given external
        # connection.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::ExternalConnections::UploadPendingCountResponse
          )
        end
        def pending_count(
          # Identifies the resource.
          id,
          request_options: {}
        )
        end

        # Forces a recheck of the status of all pending Upload requests for the given
        # external connection in the background.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::ExternalConnections::UploadRefreshStatusResponse
          )
        end
        def refresh_status(
          # Identifies the resource.
          id,
          request_options: {}
        )
        end

        # If there were any errors during the upload process, this endpoint will retry the
        # upload request. In some cases this will reattempt the existing upload request,
        # in other cases it may create a new upload request. Please check the ticket_id in
        # the response to determine if a new upload request was created.
        sig do
          params(
            ticket_id: String,
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::ExternalConnections::UploadRetryResponse)
        end
        def retry_(
          # Identifies an Upload request
          ticket_id,
          # Identifies the resource.
          id:,
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
