# frozen_string_literal: true

module Telnyx
  module Resources
    class ExternalConnections
      class Uploads
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::ExternalConnections::UploadCreateParams} for more details.
        #
        # Creates a new Upload request to Microsoft teams with the included phone numbers.
        # Only one of civic_address_id or location_id must be provided, not both. The
        # maximum allowed phone numbers for the numbers_ids array is 1000.
        #
        # @overload create(id, number_ids:, additional_usages: nil, civic_address_id: nil, location_id: nil, usage: nil, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param number_ids [Array<String>]
        #
        # @param additional_usages [Array<Symbol, Telnyx::Models::ExternalConnections::UploadCreateParams::AdditionalUsage>]
        #
        # @param civic_address_id [String] Identifies the civic address to assign all phone numbers to.
        #
        # @param location_id [String] Identifies the location to assign all phone numbers to.
        #
        # @param usage [Symbol, Telnyx::Models::ExternalConnections::UploadCreateParams::Usage] The use case of the upload request. NOTE: `calling_user_assignment` is not suppo
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ExternalConnections::UploadCreateResponse]
        #
        # @see Telnyx::Models::ExternalConnections::UploadCreateParams
        def create(id, params)
          parsed, options = Telnyx::ExternalConnections::UploadCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["external_connections/%1$s/uploads", id],
            body: parsed,
            model: Telnyx::Models::ExternalConnections::UploadCreateResponse,
            options: options
          )
        end

        # Return the details of an Upload request and its phone numbers.
        #
        # @overload retrieve(ticket_id, id:, request_options: {})
        #
        # @param ticket_id [String] Identifies an Upload request
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ExternalConnections::UploadRetrieveResponse]
        #
        # @see Telnyx::Models::ExternalConnections::UploadRetrieveParams
        def retrieve(ticket_id, params)
          parsed, options = Telnyx::ExternalConnections::UploadRetrieveParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["external_connections/%1$s/uploads/%2$s", id, ticket_id],
            model: Telnyx::Models::ExternalConnections::UploadRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::ExternalConnections::UploadListParams} for more details.
        #
        # Returns a list of your Upload requests for the given external connection.
        #
        # @overload list(id, filter: nil, page: nil, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param filter [Telnyx::Models::ExternalConnections::UploadListParams::Filter] Filter parameter for uploads (deepObject style). Supports filtering by status, c
        #
        # @param page [Telnyx::Models::ExternalConnections::UploadListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::ExternalConnections::Upload>]
        #
        # @see Telnyx::Models::ExternalConnections::UploadListParams
        def list(id, params = {})
          parsed, options = Telnyx::ExternalConnections::UploadListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["external_connections/%1$s/uploads", id],
            query: parsed,
            page: Telnyx::Internal::DefaultPagination,
            model: Telnyx::ExternalConnections::Upload,
            options: options
          )
        end

        # Returns the count of all pending upload requests for the given external
        # connection.
        #
        # @overload pending_count(id, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ExternalConnections::UploadPendingCountResponse]
        #
        # @see Telnyx::Models::ExternalConnections::UploadPendingCountParams
        def pending_count(id, params = {})
          @client.request(
            method: :get,
            path: ["external_connections/%1$s/uploads/status", id],
            model: Telnyx::Models::ExternalConnections::UploadPendingCountResponse,
            options: params[:request_options]
          )
        end

        # Forces a recheck of the status of all pending Upload requests for the given
        # external connection in the background.
        #
        # @overload refresh_status(id, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ExternalConnections::UploadRefreshStatusResponse]
        #
        # @see Telnyx::Models::ExternalConnections::UploadRefreshStatusParams
        def refresh_status(id, params = {})
          @client.request(
            method: :post,
            path: ["external_connections/%1$s/uploads/refresh", id],
            model: Telnyx::Models::ExternalConnections::UploadRefreshStatusResponse,
            options: params[:request_options]
          )
        end

        # If there were any errors during the upload process, this endpoint will retry the
        # upload request. In some cases this will reattempt the existing upload request,
        # in other cases it may create a new upload request. Please check the ticket_id in
        # the response to determine if a new upload request was created.
        #
        # @overload retry_(ticket_id, id:, request_options: {})
        #
        # @param ticket_id [String] Identifies an Upload request
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ExternalConnections::UploadRetryResponse]
        #
        # @see Telnyx::Models::ExternalConnections::UploadRetryParams
        def retry_(ticket_id, params)
          parsed, options = Telnyx::ExternalConnections::UploadRetryParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["external_connections/%1$s/uploads/%2$s/retry", id, ticket_id],
            model: Telnyx::Models::ExternalConnections::UploadRetryResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
