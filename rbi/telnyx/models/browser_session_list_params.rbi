# typed: strong

module Telnyx
  module Models
    class BrowserSessionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::BrowserSessionListParams, Telnyx::Internal::AnyHash)
        end

      sig do
        returns(T.nilable(Telnyx::BrowserSessionListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Telnyx::BrowserSessionListParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          status: Telnyx::BrowserSessionListParams::Status::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(status: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            status: Telnyx::BrowserSessionListParams::Status::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::BrowserSessionListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROVISIONING =
          T.let(
            :provisioning,
            Telnyx::BrowserSessionListParams::Status::TaggedSymbol
          )
        READY =
          T.let(:ready, Telnyx::BrowserSessionListParams::Status::TaggedSymbol)
        CLOSING =
          T.let(
            :closing,
            Telnyx::BrowserSessionListParams::Status::TaggedSymbol
          )
        CLOSED =
          T.let(:closed, Telnyx::BrowserSessionListParams::Status::TaggedSymbol)
        FAILED =
          T.let(:failed, Telnyx::BrowserSessionListParams::Status::TaggedSymbol)
        EXPIRED =
          T.let(
            :expired,
            Telnyx::BrowserSessionListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::BrowserSessionListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
