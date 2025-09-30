# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::CanaryDeploys#create
        class CanaryDeployResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute assistant_id
          #
          #   @return [String]
          required :assistant_id, String

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute updated_at
          #
          #   @return [Time]
          required :updated_at, Time

          # @!attribute versions
          #
          #   @return [Array<Telnyx::Models::AI::Assistants::VersionConfig>]
          required :versions, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::VersionConfig] }

          # @!method initialize(assistant_id:, created_at:, updated_at:, versions:)
          #   Response model for canary deploy operations.
          #
          #   @param assistant_id [String]
          #   @param created_at [Time]
          #   @param updated_at [Time]
          #   @param versions [Array<Telnyx::Models::AI::Assistants::VersionConfig>]
        end
      end
    end
  end
end
