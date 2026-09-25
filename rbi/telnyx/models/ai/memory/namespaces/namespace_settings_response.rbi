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
            sig do
              returns(
                Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse::Data
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # A namespace's settings, grouped by what they affect.
              data:
            )
            end

            sig do
              override.returns(
                {
                  data:
                    Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse::Data
                }
              )
            end
            def to_hash
            end

            class Data < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse::Data,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Settings that shape this namespace's summaries.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse::Data::Summary
                  )
                )
              end
              attr_reader :summary

              sig do
                params(
                  summary:
                    Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse::Data::Summary::OrHash
                ).void
              end
              attr_writer :summary

              # A namespace's settings, grouped by what they affect.
              sig do
                params(
                  summary:
                    Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse::Data::Summary::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Settings that shape this namespace's summaries.
                summary: nil
              )
              end

              sig do
                override.returns(
                  {
                    summary:
                      Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse::Data::Summary
                  }
                )
              end
              def to_hash
              end

              class Summary < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse::Data::Summary,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Free-form instructions that influence how this namespace's summaries are
                # written, shared by every profile in the namespace. How you use them is up to you
                # -- they steer the outcome, so try a phrasing and see how the summary comes out.
                # Advisory: they steer the summary but never override or deny a profile's own
                # facts, and they do not affect recall. Null or empty means none are set, and
                # summaries use the neutral default. A change reaches each summary the next time
                # it is regenerated.
                sig { returns(T.nilable(String)) }
                attr_accessor :instructions

                # Settings that shape this namespace's summaries.
                sig do
                  params(instructions: T.nilable(String)).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # Free-form instructions that influence how this namespace's summaries are
                  # written, shared by every profile in the namespace. How you use them is up to you
                  # -- they steer the outcome, so try a phrasing and see how the summary comes out.
                  # Advisory: they steer the summary but never override or deny a profile's own
                  # facts, and they do not affect recall. Null or empty means none are set, and
                  # summaries use the neutral default. A change reaches each summary the next time
                  # it is regenerated.
                  instructions: nil
                )
                end

                sig { override.returns({ instructions: T.nilable(String) }) }
                def to_hash
                end
              end
            end
          end
        end
      end
    end
  end
end
