# typed: strong

module Telnyx
  module Resources
    class Compute
      class Funcs
        class Export
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
          sig do
            params(
              id: String,
              endpoint: String,
              headers: T::Hash[Symbol, String],
              invocation_export_enabled: T::Boolean,
              runtime_export_enabled: T::Boolean,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Compute::Funcs::FuncLogExportConfigResponse)
          end
          def create(
            # Function ID
            id,
            # HTTPS URL to push logs to
            endpoint:,
            # Headers attached to every export push, as key-value pairs (e.g. an auth token
            # the collector expects). Required even when empty — {} means "no headers".
            # Encrypted at rest; never returned.
            headers:,
            # Export invocation records (one per HTTP request) to this destination
            invocation_export_enabled:,
            # Export runtime logs (function stdout/stderr) to this destination
            runtime_export_enabled:,
            request_options: {}
          )
          end

          # Returns the function's configured log export destination and which log types are
          # exported. Headers are never returned. Returns 404 (error code 10005) when no
          # destination is configured for the function.
          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Compute::Funcs::FuncLogExportConfigResponse)
          end
          def list(
            # Function ID
            id,
            request_options: {}
          )
          end

          # Stops exporting a function's logs and removes its destination configuration.
          # Idempotent: deleting when nothing is configured succeeds.
          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete_all(
            # Function ID
            id,
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
