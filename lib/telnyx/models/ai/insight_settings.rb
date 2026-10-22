# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class InsightSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute insight_group_id
        #   Reference to an Insight Group. Insights in this group will be run automatically
        #   for all the assistant's conversations.
        #
        #   @return [String, nil]
        optional :insight_group_id, String

        # @!attribute model
        #   The model that generates the assistant's insights when a conversation ends. It
        #   runs every insight in the group, Telnyx-managed insights included. Must be
        #   `zai-org/GLM-5.3-Flash` or `meta-llama/Llama-3.3-70B-Instruct`; any other model
        #   returns `422`. When omitted on create, it defaults to `zai-org/GLM-5.3-Flash`;
        #   when omitted on update, the current model is kept. `null` uses Telnyx's default
        #   insight models, which assistants created before this setting have. Insights of
        #   messaging conversations, and insights regenerated later, always use Telnyx's
        #   default insight models.
        #
        #   @return [String, nil]
        optional :model, String, nil?: true

        # @!method initialize(insight_group_id: nil, model: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::InsightSettings} for more details.
        #
        #   @param insight_group_id [String] Reference to an Insight Group. Insights in this group will be run automatically
        #
        #   @param model [String, nil] The model that generates the assistant's insights when a conversation ends. It r
      end
    end
  end
end
