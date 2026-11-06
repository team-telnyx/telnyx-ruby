# typed: strong

module Telnyx
  module Models
    class BrowserSessionCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::BrowserSessionCreateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::BrowserSessionCreateParams::Policy) }
      attr_reader :policy

      sig do
        params(policy: Telnyx::BrowserSessionCreateParams::Policy::OrHash).void
      end
      attr_writer :policy

      # Scoped to the organization. The same key and identical normalized policy,
      # limits, and metadata replay the existing session (HTTP 201); a different request
      # returns 409 idempotency_conflict. Replays do not restart terminal sessions.
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig { returns(T.nilable(Telnyx::BrowserSessionCreateParams::Limits)) }
      attr_reader :limits

      sig do
        params(limits: Telnyx::BrowserSessionCreateParams::Limits::OrHash).void
      end
      attr_writer :limits

      # Arbitrary key-value metadata.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      sig do
        params(
          policy: Telnyx::BrowserSessionCreateParams::Policy::OrHash,
          idempotency_key: String,
          limits: Telnyx::BrowserSessionCreateParams::Limits::OrHash,
          metadata: T::Hash[Symbol, T.anything],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        policy:,
        # Scoped to the organization. The same key and identical normalized policy,
        # limits, and metadata replay the existing session (HTTP 201); a different request
        # returns 409 idempotency_conflict. Replays do not restart terminal sessions.
        idempotency_key: nil,
        limits: nil,
        # Arbitrary key-value metadata.
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            policy: Telnyx::BrowserSessionCreateParams::Policy,
            idempotency_key: String,
            limits: Telnyx::BrowserSessionCreateParams::Limits,
            metadata: T::Hash[Symbol, T.anything],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Policy < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BrowserSessionCreateParams::Policy,
              Telnyx::Internal::AnyHash
            )
          end

        # Domain patterns the browser can navigate to. Exact match (example.com) or
        # wildcard (\*.example.com). IP literals not allowed.
        sig { returns(T::Array[String]) }
        attr_accessor :allowed_domains

        sig do
          params(allowed_domains: T::Array[String]).returns(T.attached_class)
        end
        def self.new(
          # Domain patterns the browser can navigate to. Exact match (example.com) or
          # wildcard (\*.example.com). IP literals not allowed.
          allowed_domains:
        )
        end

        sig { override.returns({ allowed_domains: T::Array[String] }) }
        def to_hash
        end
      end

      class Limits < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BrowserSessionCreateParams::Limits,
              Telnyx::Internal::AnyHash
            )
          end

        # Idle timeout in seconds. Must not exceed lifetime_s.
        sig { returns(T.nilable(Integer)) }
        attr_reader :idle_timeout_s

        sig { params(idle_timeout_s: Integer).void }
        attr_writer :idle_timeout_s

        # Max session duration in seconds (60-1800).
        sig { returns(T.nilable(Integer)) }
        attr_reader :lifetime_s

        sig { params(lifetime_s: Integer).void }
        attr_writer :lifetime_s

        sig do
          params(idle_timeout_s: Integer, lifetime_s: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # Idle timeout in seconds. Must not exceed lifetime_s.
          idle_timeout_s: nil,
          # Max session duration in seconds (60-1800).
          lifetime_s: nil
        )
        end

        sig do
          override.returns({ idle_timeout_s: Integer, lifetime_s: Integer })
        end
        def to_hash
        end
      end
    end
  end
end
