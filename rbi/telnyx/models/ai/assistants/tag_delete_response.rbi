# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class TagDeleteResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Assistants::TagDeleteResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T::Array[String]) }
          attr_accessor :tags

          sig { params(tags: T::Array[String]).returns(T.attached_class) }
          def self.new(tags:)
          end

          sig { override.returns({ tags: T::Array[String] }) }
          def to_hash
          end
        end
      end
    end
  end
end
