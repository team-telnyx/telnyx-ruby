# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        class NamespaceCreateResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Memory::NamespaceCreateResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # An isolated memory store within your organization.
          sig { returns(Telnyx::AI::Memory::Namespace) }
          attr_reader :data

          sig { params(data: Telnyx::AI::Memory::Namespace::OrHash).void }
          attr_writer :data

          sig do
            params(data: Telnyx::AI::Memory::Namespace::OrHash).returns(
              T.attached_class
            )
          end
          def self.new(
            # An isolated memory store within your organization.
            data:
          )
          end

          sig { override.returns({ data: Telnyx::AI::Memory::Namespace }) }
          def to_hash
          end
        end
      end
    end
  end
end
