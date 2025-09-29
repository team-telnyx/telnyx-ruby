# typed: strong

module Telnyx
  module Models
    class PortoutUpdateStatusParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::PortoutUpdateStatusParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Provide a reason if rejecting the port out request
      sig { returns(String) }
      attr_accessor :reason

      # Indicates whether messaging services should be maintained with Telnyx after the
      # port out completes
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :host_messaging

      sig { params(host_messaging: T::Boolean).void }
      attr_writer :host_messaging

      sig do
        params(
          id: String,
          reason: String,
          host_messaging: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Provide a reason if rejecting the port out request
        reason:,
        # Indicates whether messaging services should be maintained with Telnyx after the
        # port out completes
        host_messaging: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            reason: String,
            host_messaging: T::Boolean,
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
            T.all(Symbol, Telnyx::PortoutUpdateStatusParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTHORIZED =
          T.let(
            :authorized,
            Telnyx::PortoutUpdateStatusParams::Status::TaggedSymbol
          )
        REJECTED_PENDING =
          T.let(
            :"rejected-pending",
            Telnyx::PortoutUpdateStatusParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PortoutUpdateStatusParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
