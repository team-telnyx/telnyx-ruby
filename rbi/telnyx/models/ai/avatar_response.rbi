# typed: strong

module Telnyx
  module Models
    module AI
      class AvatarResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AvatarResponse, Telnyx::Internal::AnyHash)
          end

        sig { returns(Telnyx::AI::Avatar) }
        attr_reader :data

        sig { params(data: Telnyx::AI::Avatar::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::AI::Avatar::OrHash).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig { override.returns({ data: Telnyx::AI::Avatar }) }
        def to_hash
        end
      end
    end
  end
end
