# typed: strong

module Telnyx
  module Models
    # Determines which webhook format will be used, Telnyx API v1 or v2.
    module WebhookAPIVersion
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::WebhookAPIVersion) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      V1 = T.let(:"1", Telnyx::WebhookAPIVersion::TaggedSymbol)
      V2 = T.let(:"2", Telnyx::WebhookAPIVersion::TaggedSymbol)

      sig do
        override.returns(T::Array[Telnyx::WebhookAPIVersion::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
