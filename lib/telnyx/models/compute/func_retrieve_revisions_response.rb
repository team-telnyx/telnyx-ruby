# frozen_string_literal: true

module Telnyx
  module Models
    module Compute
      # @see Telnyx::Resources::Compute::Funcs#retrieve_revisions
      class FuncRetrieveRevisionsResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Compute::FuncRetrieveRevisionsResponse::Data>, nil]
        optional :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Compute::FuncRetrieveRevisionsResponse::Data] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::Compute::FunctionsObservabilityPaginationMeta, nil]
        optional :meta, -> { Telnyx::Compute::FunctionsObservabilityPaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::Compute::FuncRetrieveRevisionsResponse::Data>]
        #   @param meta [Telnyx::Models::Compute::FunctionsObservabilityPaginationMeta]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute active
          #
          #   @return [Boolean, nil]
          optional :active, Telnyx::Internal::Type::Boolean

          # @!attribute build_ok_at
          #
          #   @return [Time, nil]
          optional :build_ok_at, Time

          # @!attribute build_status
          #
          #   @return [String, nil]
          optional :build_status, String

          # @!attribute commit_sha
          #
          #   @return [String, nil]
          optional :commit_sha, String

          # @!attribute deploy_status
          #
          #   @return [String, nil]
          optional :deploy_status, String

          # @!attribute failure_reason
          #
          #   @return [String, nil]
          optional :failure_reason, String

          # @!attribute failure_stage
          #
          #   @return [String, nil]
          optional :failure_stage, String

          # @!attribute image
          #
          #   @return [String, nil]
          optional :image, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute revision_id
          #
          #   @return [String, nil]
          optional :revision_id, String

          # @!attribute shipped_at
          #
          #   @return [Time, nil]
          optional :shipped_at, Time

          # @!attribute shipped_by
          #
          #   @return [String, nil]
          optional :shipped_by, String

          # @!method initialize(active: nil, build_ok_at: nil, build_status: nil, commit_sha: nil, deploy_status: nil, failure_reason: nil, failure_stage: nil, image: nil, record_type: nil, revision_id: nil, shipped_at: nil, shipped_by: nil)
          #   @param active [Boolean]
          #   @param build_ok_at [Time]
          #   @param build_status [String]
          #   @param commit_sha [String]
          #   @param deploy_status [String]
          #   @param failure_reason [String]
          #   @param failure_stage [String]
          #   @param image [String]
          #   @param record_type [String]
          #   @param revision_id [String]
          #   @param shipped_at [Time]
          #   @param shipped_by [String]
        end
      end
    end
  end
end
