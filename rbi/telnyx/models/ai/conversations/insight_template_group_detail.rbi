# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        class InsightTemplateGroupDetail < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Conversations::InsightTemplateGroupDetail,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Telnyx::AI::Conversations::InsightTemplateGroup) }
          attr_reader :data

          sig do
            params(
              data: Telnyx::AI::Conversations::InsightTemplateGroup::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data: Telnyx::AI::Conversations::InsightTemplateGroup::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              { data: Telnyx::AI::Conversations::InsightTemplateGroup }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
