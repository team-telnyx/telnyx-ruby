# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class SummarySettings < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Memory::Namespaces::SummarySettings,
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

            # A namespace's summary settings, shared by every profile in it.
            sig do
              params(instructions: T.nilable(String)).returns(T.attached_class)
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
