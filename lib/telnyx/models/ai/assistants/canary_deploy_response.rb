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

          # @!attribute rules
          #
          #   @return [Array<Telnyx::Models::AI::Assistants::RuleOutput>]
          required :rules, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::RuleOutput] }

          # @!attribute updated_at
          #
          #   @return [Time]
          required :updated_at, Time

          # @!method initialize(assistant_id:, created_at:, rules:, updated_at:)
          #   Response shape.
          #
          #   Always carries `rules` (canonical).
          #
          #   @param assistant_id [String]
          #   @param created_at [Time]
          #   @param rules [Array<Telnyx::Models::AI::Assistants::RuleOutput>]
          #   @param updated_at [Time]
        end
      end
    end
  end
end
