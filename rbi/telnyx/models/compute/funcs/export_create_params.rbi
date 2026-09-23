# typed: strong

module Telnyx
  module Models
    module Compute
      module Funcs
        class ExportCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Compute::Funcs::ExportCreateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # HTTPS URL to push logs to
          sig { returns(String) }
          attr_accessor :endpoint

          # Headers attached to every export push, as key-value pairs (e.g. an auth token
          # the collector expects). Required even when empty — {} means "no headers".
          # Encrypted at rest; never returned.
          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :headers

          # Export invocation records (one per HTTP request) to this destination
          sig { returns(T::Boolean) }
          attr_accessor :invocation_export_enabled

          # Export runtime logs (function stdout/stderr) to this destination
          sig { returns(T::Boolean) }
          attr_accessor :runtime_export_enabled

          sig do
            params(
              id: String,
              endpoint: String,
              headers: T::Hash[Symbol, String],
              invocation_export_enabled: T::Boolean,
              runtime_export_enabled: T::Boolean,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
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

          sig do
            override.returns(
              {
                id: String,
                endpoint: String,
                headers: T::Hash[Symbol, String],
                invocation_export_enabled: T::Boolean,
                runtime_export_enabled: T::Boolean,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
