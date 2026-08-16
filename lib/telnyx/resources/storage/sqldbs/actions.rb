# frozen_string_literal: true

module Telnyx
  module Resources
    class Storage
      class Sqldbs
        # Manage SQL databases and run SQL against them
        class Actions
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Storage::Sqldbs::ActionQueryParams} for more details.
          #
          # Runs SQL against the database and returns the resulting rows — empty for
          # statements that return none, such as DDL. Bind positional `?` placeholders with
          # `params` rather than interpolating values into the SQL string.
          #
          # @overload query(id, sql:, params: nil, request_options: {})
          #
          # @param id [String] SQL database ID
          #
          # @param sql [String] The SQL to run. Use positional `?` placeholders and supply the values in `params
          #
          # @param params [Array<String, Float, Boolean, nil>] Positional bind parameters, in placeholder order. Each value is a string, a numb
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Storage::Sqldbs::ActionQueryResponse]
          #
          # @see Telnyx::Models::Storage::Sqldbs::ActionQueryParams
          def query(id, params)
            parsed, options = Telnyx::Storage::Sqldbs::ActionQueryParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["storage/sqldbs/%1$s/actions/query", id],
              body: parsed,
              model: Telnyx::Models::Storage::Sqldbs::ActionQueryResponse,
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
end
