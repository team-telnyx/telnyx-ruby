# typed: strong

module Telnyx
  module Models
    class InboundSipHeader < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::InboundSipHeader, Telnyx::Internal::AnyHash)
        end

      # The name of the header received from the SIP INVITE.
      sig { returns(Telnyx::InboundSipHeader::Name::TaggedSymbol) }
      attr_accessor :name

      # The value of the header.
      sig { returns(String) }
      attr_accessor :value

      sig do
        params(
          name: Telnyx::InboundSipHeader::Name::OrSymbol,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the header received from the SIP INVITE.
        name:,
        # The value of the header.
        value:
      )
      end

      sig do
        override.returns(
          { name: Telnyx::InboundSipHeader::Name::TaggedSymbol, value: String }
        )
      end
      def to_hash
      end

      # The name of the header received from the SIP INVITE.
      module Name
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::InboundSipHeader::Name) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USER_TO_USER =
          T.let(:"User-to-User", Telnyx::InboundSipHeader::Name::TaggedSymbol)
        DIVERSION =
          T.let(:Diversion, Telnyx::InboundSipHeader::Name::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::InboundSipHeader::Name::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
