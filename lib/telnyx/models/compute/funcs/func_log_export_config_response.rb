# frozen_string_literal: true

module Telnyx
  module Models
    module Compute
      module Funcs
        # @see Telnyx::Resources::Compute::Funcs::Export#create
        class FuncLogExportConfigResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #   Metadata-only view of a function's log export destination. Header values are
          #   write-only (encrypted server-side) and never appear in any response.
          #
          #   @return [Telnyx::Models::Compute::Funcs::FuncLogExportConfigResponse::Data, nil]
          optional :data, -> { Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data }

          # @!method initialize(data: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Compute::Funcs::FuncLogExportConfigResponse} for more details.
          #
          #   @param data [Telnyx::Models::Compute::Funcs::FuncLogExportConfigResponse::Data] Metadata-only view of a function's log export destination. Header values are wri

          # @see Telnyx::Models::Compute::Funcs::FuncLogExportConfigResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Configuration record ID
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute created_at
            #
            #   @return [Time, nil]
            optional :created_at, Time

            # @!attribute enabled
            #   Whether export is enabled for this function
            #
            #   @return [Boolean, nil]
            optional :enabled, Telnyx::Internal::Type::Boolean

            # @!attribute endpoint
            #   HTTPS OTLP endpoint URL logs are pushed to
            #
            #   @return [String, nil]
            optional :endpoint, String

            # @!attribute func_id
            #   Function ID this configuration belongs to
            #
            #   @return [String, nil]
            optional :func_id, String

            # @!attribute invocation_export_enabled
            #   Whether invocation records (one per HTTP request) are exported
            #
            #   @return [Boolean, nil]
            optional :invocation_export_enabled, Telnyx::Internal::Type::Boolean

            # @!attribute record_type
            #
            #   @return [Symbol, Telnyx::Models::Compute::Funcs::FuncLogExportConfigResponse::Data::RecordType, nil]
            optional :record_type, enum: -> { Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data::RecordType }

            # @!attribute runtime_export_enabled
            #   Whether runtime logs (function stdout/stderr) are exported
            #
            #   @return [Boolean, nil]
            optional :runtime_export_enabled, Telnyx::Internal::Type::Boolean

            # @!attribute updated_at
            #
            #   @return [Time, nil]
            optional :updated_at, Time

            # @!method initialize(id: nil, created_at: nil, enabled: nil, endpoint: nil, func_id: nil, invocation_export_enabled: nil, record_type: nil, runtime_export_enabled: nil, updated_at: nil)
            #   Metadata-only view of a function's log export destination. Header values are
            #   write-only (encrypted server-side) and never appear in any response.
            #
            #   @param id [String] Configuration record ID
            #
            #   @param created_at [Time]
            #
            #   @param enabled [Boolean] Whether export is enabled for this function
            #
            #   @param endpoint [String] HTTPS OTLP endpoint URL logs are pushed to
            #
            #   @param func_id [String] Function ID this configuration belongs to
            #
            #   @param invocation_export_enabled [Boolean] Whether invocation records (one per HTTP request) are exported
            #
            #   @param record_type [Symbol, Telnyx::Models::Compute::Funcs::FuncLogExportConfigResponse::Data::RecordType]
            #
            #   @param runtime_export_enabled [Boolean] Whether runtime logs (function stdout/stderr) are exported
            #
            #   @param updated_at [Time]

            # @see Telnyx::Models::Compute::Funcs::FuncLogExportConfigResponse::Data#record_type
            module RecordType
              extend Telnyx::Internal::Type::Enum

              COMPUTE_FUNC_LOG_EXPORT_CONFIG = :compute_func_log_export_config

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end

      FuncLogExportConfigResponse = Funcs::FuncLogExportConfigResponse
    end
  end
end
