# frozen_string_literal: true

module Telnyx
  module Resources
    class Recordings
      # Call Recordings operations.
      class Actions
        # Permanently deletes a list of call recordings.
        #
        # @overload delete(ids:, request_options: {})
        #
        # @param ids [Array<String>] List of call recording IDs to delete.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Recordings::ActionDeleteResponse]
        #
        # @see Telnyx::Models::Recordings::ActionDeleteParams
        def delete(params)
          parsed, options = Telnyx::Recordings::ActionDeleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: "recordings/actions/delete",
            body: parsed,
            model: Telnyx::Models::Recordings::ActionDeleteResponse,
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
