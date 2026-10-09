# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        class NamespaceListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Memory::NamespaceListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T::Array[Telnyx::AI::Memory::Namespace]) }
          attr_accessor :data

          sig do
            params(
              data: T::Array[Telnyx::AI::Memory::Namespace::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns({ data: T::Array[Telnyx::AI::Memory::Namespace] })
          end
          def to_hash
          end
        end
      end
    end
  end
end
