# typed: strong

module Telnyx
  module Models
    module AI
      # Authentication method used when connecting to the external LLM endpoint.
      module AuthenticationMethod
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::AI::AuthenticationMethod) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOKEN = T.let(:token, Telnyx::AI::AuthenticationMethod::TaggedSymbol)
        CERTIFICATE =
          T.let(:certificate, Telnyx::AI::AuthenticationMethod::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::AI::AuthenticationMethod::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
