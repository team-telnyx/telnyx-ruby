# typed: strong

module Telnyx
  module Models
    module AI
      class HangupToolParams < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::HangupToolParams, Telnyx::Internal::AnyHash)
          end

        # The description of the function that will be passed to the assistant.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { params(description: String).returns(T.attached_class) }
        def self.new(
          # The description of the function that will be passed to the assistant.
          description: nil
        )
        end

        sig { override.returns({ description: String }) }
        def to_hash
        end
      end
    end
  end
end
