# frozen_string_literal: true

module Telnyx
  module Models
    module Compute
      # @see Telnyx::Resources::Compute::Funcs#retrieve_ship_inspection
      class FuncRetrieveShipInspectionResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data]

        # @see Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute reason
          #
          #   @return [String, nil]
          optional :reason, String

          # @!attribute record_type
          #   Stable record type retained by both inspection path aliases.
          #
          #   @return [Symbol, Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::RecordType, nil]
          optional :record_type,
                   enum: -> { Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::RecordType }

          # @!attribute runtime
          #
          #   @return [String, nil]
          optional :runtime, String

          # @!attribute snippet
          #
          #   @return [String, nil]
          optional :snippet, String

          # @!attribute stage
          #
          #   @return [Symbol, Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage, nil]
          optional :stage, enum: -> { Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage }

          # @!method initialize(created_at: nil, reason: nil, record_type: nil, runtime: nil, snippet: nil, stage: nil)
          #   @param created_at [Time]
          #
          #   @param reason [String]
          #
          #   @param record_type [Symbol, Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::RecordType] Stable record type retained by both inspection path aliases.
          #
          #   @param runtime [String]
          #
          #   @param snippet [String]
          #
          #   @param stage [Symbol, Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage]

          # Stable record type retained by both inspection path aliases.
          #
          # @see Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            BUILD_LOG_INSPECTION = :build_log_inspection

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data#stage
          module Stage
            extend Telnyx::Internal::Type::Enum

            BUILD = :build
            PLATFORM = :platform
            PRE_BUILD = :pre_build
            DEPLOY = :deploy
            SECURITY_REVIEW = :security_review
            NONE = :none
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
