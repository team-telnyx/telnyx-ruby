# frozen_string_literal: true

module Telnyx
  module Resources
    class Recordings
      class Actions
        # Permanently deletes a list of call recordings.
        #
        # @overload delete(ids:, request_options: {})
        #
        # @param ids [Array<String>] List of call recording IDs to delete.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Recordings::ActionDeleteParams
        def delete(params)
          parsed, options = Telnyx::Recordings::ActionDeleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: "recordings/actions/delete",
            body: parsed,
            model: NilClass,
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
