# typed: strong

module Telnyx
  module Models
    class SipHeader < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::SipHeader, Telnyx::Internal::AnyHash) }

      # The name of the header to add.
      sig { returns(Telnyx::SipHeader::Name::OrSymbol) }
      attr_accessor :name

      # The value of the header.
      sig { returns(String) }
      attr_accessor :value

      sig do
        params(name: Telnyx::SipHeader::Name::OrSymbol, value: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The name of the header to add.
        name:,
        # The value of the header.
        value:
      )
      end

      sig do
        override.returns(
          { name: Telnyx::SipHeader::Name::OrSymbol, value: String }
        )
      end
      def to_hash
      end

      # The name of the header to add.
      module Name
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::SipHeader::Name) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USER_TO_USER =
          T.let(:"User-to-User", Telnyx::SipHeader::Name::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::SipHeader::Name::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
