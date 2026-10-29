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
          #   @return [Telnyx::Models::Compute::Funcs::FuncLogExportConfig, nil]
          optional :data, -> { Telnyx::Compute::Funcs::FuncLogExportConfig }

          # @!method initialize(data: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Compute::Funcs::FuncLogExportConfigResponse} for more details.
          #
          #   @param data [Telnyx::Models::Compute::Funcs::FuncLogExportConfig] Metadata-only view of a function's log export destination. Header values are wri
        end
      end

      FuncLogExportConfigResponse = Funcs::FuncLogExportConfigResponse
    end
  end
end
