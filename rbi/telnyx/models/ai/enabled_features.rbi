# typed: strong

module Telnyx
  module Models
    module AI
      # If `telephony` is enabled, the assistant will be able to make and receive calls.
      # If `messaging` is enabled, the assistant will be able to send and receive
      # messages.
      module EnabledFeatures
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::AI::EnabledFeatures) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TELEPHONY = T.let(:telephony, Telnyx::AI::EnabledFeatures::TaggedSymbol)
        MESSAGING = T.let(:messaging, Telnyx::AI::EnabledFeatures::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::AI::EnabledFeatures::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
