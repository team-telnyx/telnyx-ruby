# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        NamespaceSettings = Namespaces::NamespaceSettings

        module Namespaces
          class NamespaceSettings < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Memory::Namespaces::NamespaceSettings,
                  Telnyx::Internal::AnyHash
                )
              end

            # Settings that shape this namespace's summaries.
            sig do
              returns(
                T.nilable(Telnyx::AI::Memory::Namespaces::SummarySettings)
              )
            end
            attr_reader :summary

            sig do
              params(
                summary: Telnyx::AI::Memory::Namespaces::SummarySettings::OrHash
              ).void
            end
            attr_writer :summary

            # A namespace's settings, grouped by what they affect.
            sig do
              params(
                summary: Telnyx::AI::Memory::Namespaces::SummarySettings::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Settings that shape this namespace's summaries.
              summary: nil
            )
            end

            sig do
              override.returns(
                { summary: Telnyx::AI::Memory::Namespaces::SummarySettings }
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
