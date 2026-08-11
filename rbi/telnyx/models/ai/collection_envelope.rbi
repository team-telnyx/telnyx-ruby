# typed: strong

module Telnyx
  module Models
    module AI
      class CollectionEnvelope < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::CollectionEnvelope, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(Telnyx::AI::Collection)) }
        attr_reader :data

        sig { params(data: Telnyx::AI::Collection::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::AI::Collection::OrHash).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::AI::Collection }) }
        def to_hash
        end
      end
    end
  end
end
