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

        sig { params(insight_group_id: String).returns(T.attached_class) }
        def self.new(
          # Reference to an Insight Group. Insights in this group will be run automatically
          # for all the assistant's conversations.
          insight_group_id: nil
        )
        end

        sig { override.returns({ insight_group_id: String }) }
        def to_hash
        end
      end
    end
  end
end
