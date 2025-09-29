# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        class InsightTemplateDetail < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Conversations::InsightTemplateDetail,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Telnyx::AI::Conversations::InsightTemplate) }
          attr_reader :data

          sig do
            params(
              data: Telnyx::AI::Conversations::InsightTemplate::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data: Telnyx::AI::Conversations::InsightTemplate::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              { data: Telnyx::AI::Conversations::InsightTemplate }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
