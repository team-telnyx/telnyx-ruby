# typed: strong

module Telnyx
  module Models
    class Attempt < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::Attempt, Telnyx::Internal::AnyHash) }

      # Webhook delivery error codes.
      sig { returns(T.nilable(T::Array[Integer])) }
      attr_reader :errors

      sig { params(errors: T::Array[Integer]).void }
      attr_writer :errors

      # ISO 8601 timestamp indicating when the attempt has finished.
      sig { returns(T.nilable(Time)) }
      attr_reader :finished_at

      sig { params(finished_at: Time).void }
      attr_writer :finished_at

      # HTTP request and response information.
      sig { returns(T.nilable(Telnyx::HTTP)) }
      attr_reader :http

      sig { params(http: Telnyx::HTTP::OrHash).void }
      attr_writer :http

      # ISO 8601 timestamp indicating when the attempt was initiated.
      sig { returns(T.nilable(Time)) }
      attr_reader :started_at

      sig { params(started_at: Time).void }
      attr_writer :started_at

      sig { returns(T.nilable(Telnyx::Attempt::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::Attempt::Status::OrSymbol).void }
      attr_writer :status

      # Webhook delivery attempt details.
      sig do
        params(
          errors: T::Array[Integer],
          finished_at: Time,
          http: Telnyx::HTTP::OrHash,
          started_at: Time,
          status: Telnyx::Attempt::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Webhook delivery error codes.
        errors: nil,
        # ISO 8601 timestamp indicating when the attempt has finished.
        finished_at: nil,
        # HTTP request and response information.
        http: nil,
        # ISO 8601 timestamp indicating when the attempt was initiated.
        started_at: nil,
        status: nil
      )
      end

      sig do
        override.returns(
          {
            errors: T::Array[Integer],
            finished_at: Time,
            http: Telnyx::HTTP,
            started_at: Time,
            status: Telnyx::Attempt::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::Attempt::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DELIVERED = T.let(:delivered, Telnyx::Attempt::Status::TaggedSymbol)
        FAILED = T.let(:failed, Telnyx::Attempt::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::Attempt::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
