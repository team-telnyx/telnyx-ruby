# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        NamespaceSettingsResponse = Namespaces::NamespaceSettingsResponse

        module Namespaces
          class NamespaceSettingsResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            # A namespace's settings, grouped by what they affect.
            sig { returns(Telnyx::AI::Memory::Namespaces::NamespaceSettings) }
            attr_reader :data

            sig do
              params(
                data: Telnyx::AI::Memory::Namespaces::NamespaceSettings::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data: Telnyx::AI::Memory::Namespaces::NamespaceSettings::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # A namespace's settings, grouped by what they affect.
              data:
            )
            end

            sig do
              override.returns(
                { data: Telnyx::AI::Memory::Namespaces::NamespaceSettings }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
