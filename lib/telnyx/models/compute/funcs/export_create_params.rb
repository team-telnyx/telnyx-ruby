# frozen_string_literal: true

module Telnyx
  module Models
    module Compute
      module Funcs
        # @see Telnyx::Resources::Compute::Funcs::Export#create
        class ExportCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute endpoint
          #   HTTPS URL to push logs to
          #
          #   @return [String]
          required :endpoint, String

          # @!attribute headers
          #   Headers attached to every export push, as key-value pairs (e.g. an auth token
          #   the collector expects). Required even when empty — {} means "no headers".
          #   Encrypted at rest; never returned.
          #
          #   @return [Hash{Symbol=>String}]
          required :headers, Telnyx::Internal::Type::HashOf[String]

          # @!attribute invocation_export_enabled
          #   Export invocation records (one per HTTP request) to this destination
          #
          #   @return [Boolean]
          required :invocation_export_enabled, Telnyx::Internal::Type::Boolean

          # @!attribute runtime_export_enabled
          #   Export runtime logs (function stdout/stderr) to this destination
          #
          #   @return [Boolean]
          required :runtime_export_enabled, Telnyx::Internal::Type::Boolean

          # @!method initialize(id:, endpoint:, headers:, invocation_export_enabled:, runtime_export_enabled:, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Compute::Funcs::ExportCreateParams} for more details.
          #
          #   @param id [String]
          #
          #   @param endpoint [String] HTTPS URL to push logs to
          #
          #   @param headers [Hash{Symbol=>String}] Headers attached to every export push, as key-value pairs (e.g. an auth token th
          #
          #   @param invocation_export_enabled [Boolean] Export invocation records (one per HTTP request) to this destination
          #
          #   @param runtime_export_enabled [Boolean] Export runtime logs (function stdout/stderr) to this destination
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
