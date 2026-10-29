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
            returns(T.nilable(Telnyx::Compute::Funcs::FuncLogExportConfig))
          end
          attr_reader :data

          sig do
            params(
              data: Telnyx::Compute::Funcs::FuncLogExportConfig::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data: Telnyx::Compute::Funcs::FuncLogExportConfig::OrHash
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
              { data: Telnyx::Compute::Funcs::FuncLogExportConfig }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
