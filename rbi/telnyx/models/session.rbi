# typed: strong

module Telnyx
  module Models
    class Session < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::Session, Telnyx::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Time)) }
      attr_accessor :closed_at

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      sig { returns(T.nilable(String)) }
      attr_accessor :failure_reason

      sig { returns(T.nilable(Time)) }
      attr_accessor :last_activity_at

      sig { returns(Telnyx::Session::Limits) }
      attr_reader :limits

      sig { params(limits: Telnyx::Session::Limits::OrHash).void }
      attr_writer :limits

      sig { returns(T.anything) }
      attr_accessor :metadata

      sig { returns(Telnyx::Session::Policy) }
      attr_reader :policy

      sig { params(policy: Telnyx::Session::Policy::OrHash).void }
      attr_writer :policy

      sig { returns(T.nilable(Time)) }
      attr_accessor :ready_at

      sig { returns(Telnyx::Session::Status::TaggedSymbol) }
      attr_accessor :status

      sig do
        params(
          id: String,
          closed_at: T.nilable(Time),
          created_at: Time,
          expires_at: T.nilable(Time),
          failure_reason: T.nilable(String),
          last_activity_at: T.nilable(Time),
          limits: Telnyx::Session::Limits::OrHash,
          metadata: T.anything,
          policy: Telnyx::Session::Policy::OrHash,
          ready_at: T.nilable(Time),
          status: Telnyx::Session::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        closed_at:,
        created_at:,
        expires_at:,
        failure_reason:,
        last_activity_at:,
        limits:,
        metadata:,
        policy:,
        ready_at:,
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            closed_at: T.nilable(Time),
            created_at: Time,
            expires_at: T.nilable(Time),
            failure_reason: T.nilable(String),
            last_activity_at: T.nilable(Time),
            limits: Telnyx::Session::Limits,
            metadata: T.anything,
            policy: Telnyx::Session::Policy,
            ready_at: T.nilable(Time),
            status: Telnyx::Session::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Limits < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Session::Limits, Telnyx::Internal::AnyHash)
          end

        sig { returns(Integer) }
        attr_accessor :idle_timeout_s

        sig { returns(Integer) }
        attr_accessor :lifetime_s

        sig do
          params(idle_timeout_s: Integer, lifetime_s: Integer).returns(
            T.attached_class
          )
        end
        def self.new(idle_timeout_s:, lifetime_s:)
        end

        sig do
          override.returns({ idle_timeout_s: Integer, lifetime_s: Integer })
        end
        def to_hash
        end
      end

      class Policy < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Session::Policy, Telnyx::Internal::AnyHash)
          end

        sig { returns(T::Array[String]) }
        attr_accessor :allowed_domains

        sig do
          params(allowed_domains: T::Array[String]).returns(T.attached_class)
        end
        def self.new(allowed_domains:)
        end

        sig { override.returns({ allowed_domains: T::Array[String] }) }
        def to_hash
        end
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::Session::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROVISIONING =
          T.let(:provisioning, Telnyx::Session::Status::TaggedSymbol)
        READY = T.let(:ready, Telnyx::Session::Status::TaggedSymbol)
        CLOSING = T.let(:closing, Telnyx::Session::Status::TaggedSymbol)
        CLOSED = T.let(:closed, Telnyx::Session::Status::TaggedSymbol)
        FAILED = T.let(:failed, Telnyx::Session::Status::TaggedSymbol)
        EXPIRED = T.let(:expired, Telnyx::Session::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::Session::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
