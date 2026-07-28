# typed: strong

module Telnyx
  module Models
    module EmailAddressInput
      extend Telnyx::Internal::Type::Union

      Variants =
        T.type_alias { T.any(String, Telnyx::EmailInboxes::EmailAddress) }

      sig { override.returns(T::Array[Telnyx::EmailAddressInput::Variants]) }
      def self.variants
      end
    end
  end
end
