# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::Tags#remove
        class TagRemoveResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute tags
          #
          #   @return [Array<String>]
          required :tags, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(tags:)
          #   @param tags [Array<String>]
        end
      end
    end
  end
end
