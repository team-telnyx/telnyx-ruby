# frozen_string_literal: true

module Telnyx
  module Resources
    class MessagingHostedNumberOrders
      class Actions
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::MessagingHostedNumberOrders::ActionUploadFileParams} for more
        # details.
        #
        # Upload hosted number document
        #
        # @overload upload_file(id, bill: nil, loa: nil, request_options: {})
        #
        # @param id [String] Identifies the type of resource.
        #
        # @param bill [Pathname, StringIO, IO, String, Telnyx::FilePart] Must be the last month's bill with proof of ownership of all of the numbers in t
        #
        # @param loa [Pathname, StringIO, IO, String, Telnyx::FilePart] Must be a signed LOA for the numbers in the order in PDF format.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::MessagingHostedNumberOrders::ActionUploadFileResponse]
        #
        # @see Telnyx::Models::MessagingHostedNumberOrders::ActionUploadFileParams
        def upload_file(id, params = {})
          parsed, options = Telnyx::MessagingHostedNumberOrders::ActionUploadFileParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["messaging_hosted_number_orders/%1$s/actions/file_upload", id],
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: Telnyx::Models::MessagingHostedNumberOrders::ActionUploadFileResponse,
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
