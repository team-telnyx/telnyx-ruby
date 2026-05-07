# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        class RolloutSlot < Telnyx::Internal::Type::BaseModel
          # @!attribute version_id
          #
          #   @return [String]
          required :version_id, String

          # @!attribute weight
          #
          #   @return [Float]
          required :weight, Float

          # @!method initialize(version_id:, weight:)
          #   One slot in a percentage rollout.
          #
          #   @param version_id [String]
          #   @param weight [Float]
        end
      end
    end
  end
end
