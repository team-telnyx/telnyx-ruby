# typed: strong

module Telnyx
  module Models
    module Compute
      FuncLogExportConfigResponse = Funcs::FuncLogExportConfigResponse

      module Funcs
        class FuncLogExportConfigResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Compute::Funcs::FuncLogExportConfigResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # Metadata-only view of a function's log export destination. Header values are
          # write-only (encrypted server-side) and never appear in any response.
          sig do
            returns(
              T.nilable(
                Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Metadata-only view of a function's log export destination. Header values are
            # write-only (encrypted server-side) and never appear in any response.
            data: nil
          )
          end

          sig do
            override.returns(
              {
                data: Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            # Configuration record ID
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig { returns(T.nilable(Time)) }
            attr_reader :created_at

            sig { params(created_at: Time).void }
            attr_writer :created_at

            # Whether export is enabled for this function
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :enabled

            sig { params(enabled: T::Boolean).void }
            attr_writer :enabled

            # HTTPS OTLP endpoint URL logs are pushed to
            sig { returns(T.nilable(String)) }
            attr_reader :endpoint

            sig { params(endpoint: String).void }
            attr_writer :endpoint

            # Function ID this configuration belongs to
            sig { returns(T.nilable(String)) }
            attr_reader :func_id

            sig { params(func_id: String).void }
            attr_writer :func_id

            # Whether invocation records (one per HTTP request) are exported
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :invocation_export_enabled

            sig { params(invocation_export_enabled: T::Boolean).void }
            attr_writer :invocation_export_enabled

            sig do
              returns(
                T.nilable(
                  Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data::RecordType::TaggedSymbol
                )
              )
            end
            attr_reader :record_type

            sig do
              params(
                record_type:
                  Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data::RecordType::OrSymbol
              ).void
            end
            attr_writer :record_type

            # Whether runtime logs (function stdout/stderr) are exported
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :runtime_export_enabled

            sig { params(runtime_export_enabled: T::Boolean).void }
            attr_writer :runtime_export_enabled

            sig { returns(T.nilable(Time)) }
            attr_reader :updated_at

            sig { params(updated_at: Time).void }
            attr_writer :updated_at

            # Metadata-only view of a function's log export destination. Header values are
            # write-only (encrypted server-side) and never appear in any response.
            sig do
              params(
                id: String,
                created_at: Time,
                enabled: T::Boolean,
                endpoint: String,
                func_id: String,
                invocation_export_enabled: T::Boolean,
                record_type:
                  Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data::RecordType::OrSymbol,
                runtime_export_enabled: T::Boolean,
                updated_at: Time
              ).returns(T.attached_class)
            end
            def self.new(
              # Configuration record ID
              id: nil,
              created_at: nil,
              # Whether export is enabled for this function
              enabled: nil,
              # HTTPS OTLP endpoint URL logs are pushed to
              endpoint: nil,
              # Function ID this configuration belongs to
              func_id: nil,
              # Whether invocation records (one per HTTP request) are exported
              invocation_export_enabled: nil,
              record_type: nil,
              # Whether runtime logs (function stdout/stderr) are exported
              runtime_export_enabled: nil,
              updated_at: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  created_at: Time,
                  enabled: T::Boolean,
                  endpoint: String,
                  func_id: String,
                  invocation_export_enabled: T::Boolean,
                  record_type:
                    Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data::RecordType::TaggedSymbol,
                  runtime_export_enabled: T::Boolean,
                  updated_at: Time
                }
              )
            end
            def to_hash
            end

            module RecordType
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data::RecordType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMPUTE_FUNC_LOG_EXPORT_CONFIG =
                T.let(
                  :compute_func_log_export_config,
                  Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data::RecordType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data::RecordType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
