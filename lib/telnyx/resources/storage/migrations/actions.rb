# frozen_string_literal: true

module Telnyx
  module Resources
    class Storage
      class Migrations
        class Actions
          # Stop a Migration
          #
          # @overload stop(id, request_options: {})
          #
          # @param id [String] Unique identifier for the data migration.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Storage::Migrations::ActionStopResponse]
          #
          # @see Telnyx::Models::Storage::Migrations::ActionStopParams
          def stop(id, params = {})
            @client.request(
              method: :post,
              path: ["storage/migrations/%1$s/actions/stop", id],
              model: Telnyx::Models::Storage::Migrations::ActionStopResponse,
              options: params[:request_options]
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
end
