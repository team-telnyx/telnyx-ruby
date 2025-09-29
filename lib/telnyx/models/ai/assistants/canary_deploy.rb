# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        class CanaryDeploy < Telnyx::Internal::Type::BaseModel
          # @!attribute versions
          #   List of version configurations
          #
          #   @return [Array<Telnyx::Models::AI::Assistants::VersionConfig>]
          required :versions, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::VersionConfig] }

          # @!method initialize(versions:)
          #   Request model for creating or updating canary deploys.
          #
          #   @param versions [Array<Telnyx::Models::AI::Assistants::VersionConfig>] List of version configurations
        end
      end
    end
  end
end
