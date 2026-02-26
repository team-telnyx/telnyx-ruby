# typed: strong

module Telnyx
  module Models
    module Portouts
      class CommentCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Portouts::CommentCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Portouts::PortoutComment)) }
        attr_reader :data

        sig { params(data: Telnyx::Portouts::PortoutComment::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Portouts::PortoutComment::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::Portouts::PortoutComment }) }
        def to_hash
        end
      end
    end
  end
end
