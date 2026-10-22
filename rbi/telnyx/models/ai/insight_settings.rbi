# typed: strong

module Telnyx
  module Models
    module AI
      class InsightSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::InsightSettings, Telnyx::Internal::AnyHash)
          end

        # Reference to an Insight Group. Insights in this group will be run automatically
        # for all the assistant's conversations.
        sig { returns(T.nilable(String)) }
        attr_reader :insight_group_id

        sig { params(insight_group_id: String).void }
        attr_writer :insight_group_id

        # The model that generates the assistant's insights when a conversation ends. It
        # runs every insight in the group, Telnyx-managed insights included. Must be
        # `zai-org/GLM-5.3-Flash` or `meta-llama/Llama-3.3-70B-Instruct`; any other model
        # returns `422`. When omitted on create, it defaults to `zai-org/GLM-5.3-Flash`;
        # when omitted on update, the current model is kept. `null` uses Telnyx's default
        # insight models, which assistants created before this setting have. Insights of
        # messaging conversations, and insights regenerated later, always use Telnyx's
        # default insight models.
        sig { returns(T.nilable(String)) }
        attr_accessor :model

        sig do
          params(insight_group_id: String, model: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # Reference to an Insight Group. Insights in this group will be run automatically
          # for all the assistant's conversations.
          insight_group_id: nil,
          # The model that generates the assistant's insights when a conversation ends. It
          # runs every insight in the group, Telnyx-managed insights included. Must be
          # `zai-org/GLM-5.3-Flash` or `meta-llama/Llama-3.3-70B-Instruct`; any other model
          # returns `422`. When omitted on create, it defaults to `zai-org/GLM-5.3-Flash`;
          # when omitted on update, the current model is kept. `null` uses Telnyx's default
          # insight models, which assistants created before this setting have. Insights of
          # messaging conversations, and insights regenerated later, always use Telnyx's
          # default insight models.
          model: nil
        )
        end

        sig do
          override.returns(
            { insight_group_id: String, model: T.nilable(String) }
          )
        end
        def to_hash
        end
      end
    end
  end
end
