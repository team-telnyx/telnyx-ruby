# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        class Namespace < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Telnyx::AI::Memory::Namespace, Telnyx::Internal::AnyHash)
            end

          # The namespace's unique identifier.
          sig { returns(String) }
          attr_accessor :id

          # The namespace's name, used in the path. `default` exists for every organization.
          sig { returns(String) }
          attr_accessor :name

          # An isolated memory store within your organization.
          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(
            # The namespace's unique identifier.
            id:,
            # The namespace's name, used in the path. `default` exists for every organization.
            name:
          )
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
