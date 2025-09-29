# typed: strong

module Telnyx
  module Models
    class NumberLookupRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::NumberLookupRetrieveParams, Telnyx::Internal::AnyHash)
        end

      # Specifies the type of number lookup to be performed
      sig do
        returns(T.nilable(Telnyx::NumberLookupRetrieveParams::Type::OrSymbol))
      end
      attr_reader :type

      sig do
        params(type: Telnyx::NumberLookupRetrieveParams::Type::OrSymbol).void
      end
      attr_writer :type

      sig do
        params(
          type: Telnyx::NumberLookupRetrieveParams::Type::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specifies the type of number lookup to be performed
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            type: Telnyx::NumberLookupRetrieveParams::Type::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Specifies the type of number lookup to be performed
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::NumberLookupRetrieveParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CARRIER =
          T.let(
            :carrier,
            Telnyx::NumberLookupRetrieveParams::Type::TaggedSymbol
          )
        CALLER_NAME =
          T.let(
            :"caller-name",
            Telnyx::NumberLookupRetrieveParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::NumberLookupRetrieveParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
