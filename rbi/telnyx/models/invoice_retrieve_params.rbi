# typed: strong

module Telnyx
  module Models
    class InvoiceRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::InvoiceRetrieveParams, Telnyx::Internal::AnyHash)
        end

      # Invoice action
      sig do
        returns(T.nilable(Telnyx::InvoiceRetrieveParams::Action::OrSymbol))
      end
      attr_reader :action

      sig do
        params(action: Telnyx::InvoiceRetrieveParams::Action::OrSymbol).void
      end
      attr_writer :action

      sig do
        params(
          action: Telnyx::InvoiceRetrieveParams::Action::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Invoice action
        action: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            action: Telnyx::InvoiceRetrieveParams::Action::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Invoice action
      module Action
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::InvoiceRetrieveParams::Action) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        JSON = T.let(:json, Telnyx::InvoiceRetrieveParams::Action::TaggedSymbol)
        LINK = T.let(:link, Telnyx::InvoiceRetrieveParams::Action::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::InvoiceRetrieveParams::Action::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
