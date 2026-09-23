# frozen_string_literal: true

module Telnyx
  module Resources
    class Compute
      class Funcs
        class Export
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Compute::Funcs::ExportCreateParams} for more details.
          #
          # Configures the external OTLP endpoint a function's runtime and/or invocation
          # logs are pushed to as they happen. This operation is a **full replace, not a
          # patch**: `endpoint`, `headers`, `runtime_export_enabled`, and
          # `invocation_export_enabled` are all required on every call — omitting any of
          # them is a 422, not "keep the current value". Headers are encrypted at rest and
          # never returned in any response.
          #
          # The endpoint must be an HTTPS URL. When export is configured, new log records
          # are converted to OTLP log records and delivered continuously; export never
          # bypasses platform log storage, and delivery retries with a bounded policy while
          # the destination is unreachable. Only logs generated after configuration are
          # exported — there is no historical replay.
          #
          # @overload create(id, endpoint:, headers:, invocation_export_enabled:, runtime_export_enabled:, request_options: {})
          #
          # @param id [String] Function ID
          #
          # @param endpoint [String] HTTPS URL to push logs to
          #
          # @param headers [Hash{Symbol=>String}] Headers attached to every export push, as key-value pairs (e.g. an auth token th
          #
          # @param invocation_export_enabled [Boolean] Export invocation records (one per HTTP request) to this destination
          #
          # @param runtime_export_enabled [Boolean] Export runtime logs (function stdout/stderr) to this destination
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Compute::Funcs::FuncLogExportConfigResponse]
          #
          # @see Telnyx::Models::Compute::Funcs::ExportCreateParams
          def create(id, params)
            parsed, options = Telnyx::Compute::Funcs::ExportCreateParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["compute/funcs/%1$s/logs/export", id],
              body: parsed,
              model: Telnyx::Compute::Funcs::FuncLogExportConfigResponse,
              options: options
            )
          end

          # Returns the function's configured log export destination and which log types are
          # exported. Headers are never returned. Returns 404 (error code 10005) when no
          # destination is configured for the function.
          #
          # @overload list(id, request_options: {})
          #
          # @param id [String] Function ID
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Compute::Funcs::FuncLogExportConfigResponse]
          #
          # @see Telnyx::Models::Compute::Funcs::ExportListParams
          def list(id, params = {})
            @client.request(
              method: :get,
              path: ["compute/funcs/%1$s/logs/export", id],
              model: Telnyx::Compute::Funcs::FuncLogExportConfigResponse,
              options: params[:request_options]
            )
          end

          # Stops exporting a function's logs and removes its destination configuration.
          # Idempotent: deleting when nothing is configured succeeds.
          #
          # @overload delete_all(id, request_options: {})
          #
          # @param id [String] Function ID
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::Compute::Funcs::ExportDeleteAllParams
          def delete_all(id, params = {})
            @client.request(
              method: :delete,
              path: ["compute/funcs/%1$s/logs/export", id],
              model: NilClass,
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
