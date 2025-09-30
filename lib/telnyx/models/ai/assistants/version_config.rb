# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        class VersionConfig < Telnyx::Internal::Type::BaseModel
          # @!attribute percentage
          #   Percentage of traffic for this version [1-99]
          #
          #   @return [Float]
          required :percentage, Float

          # @!attribute version_id
          #   Version ID string that references assistant_versions.version_id
          #
          #   @return [String]
          required :version_id, String

          # @!method initialize(percentage:, version_id:)
          #   Configuration for a single version in canary deploy.
          #
          #   @param percentage [Float] Percentage of traffic for this version [1-99]
          #
          #   @param version_id [String] Version ID string that references assistant_versions.version_id
        end
      end
    end
  end
end
