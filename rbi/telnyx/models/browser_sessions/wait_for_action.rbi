# typed: strong

module Telnyx
  module Models
    module BrowserSessions
      class WaitForAction < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BrowserSessions::WaitForAction,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.any(
              Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember0,
              Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember1,
              Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember2,
              Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember3
            )
          )
        end
        attr_accessor :condition

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :idempotency_key

        sig { params(idempotency_key: String).void }
        attr_writer :idempotency_key

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_observation

        sig { params(include_observation: T::Boolean).void }
        attr_writer :include_observation

        sig { returns(T.nilable(Integer)) }
        attr_reader :timeout_ms

        sig { params(timeout_ms: Integer).void }
        attr_writer :timeout_ms

        # Wait for a condition before continuing.
        sig do
          params(
            condition:
              T.any(
                Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember0::OrHash,
                Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember1::OrHash,
                Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember2::OrHash,
                Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember3::OrHash
              ),
            idempotency_key: String,
            include_observation: T::Boolean,
            timeout_ms: Integer,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          condition:,
          idempotency_key: nil,
          include_observation: nil,
          timeout_ms: nil,
          type: :wait_for
        )
        end

        sig do
          override.returns(
            {
              condition:
                T.any(
                  Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember0,
                  Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember1,
                  Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember2,
                  Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember3
                ),
              type: Symbol,
              idempotency_key: String,
              include_observation: T::Boolean,
              timeout_ms: Integer
            }
          )
        end
        def to_hash
        end

        module Condition
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember0,
                Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember1,
                Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember2,
                Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember3
              )
            end

          class UnionMember0 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember0,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Symbol) }
            attr_accessor :kind

            sig { returns(String) }
            attr_accessor :pattern

            sig do
              params(pattern: String, kind: Symbol).returns(T.attached_class)
            end
            def self.new(pattern:, kind: :url_pattern)
            end

            sig { override.returns({ kind: Symbol, pattern: String }) }
            def to_hash
            end
          end

          class UnionMember1 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember1,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Symbol) }
            attr_accessor :kind

            sig { returns(String) }
            attr_accessor :observation_id

            sig { returns(String) }
            attr_accessor :ref

            sig do
              params(observation_id: String, ref: String, kind: Symbol).returns(
                T.attached_class
              )
            end
            def self.new(observation_id:, ref:, kind: :ref)
            end

            sig do
              override.returns(
                { kind: Symbol, observation_id: String, ref: String }
              )
            end
            def to_hash
            end
          end

          class UnionMember2 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember2,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Symbol) }
            attr_accessor :kind

            sig { returns(String) }
            attr_accessor :text

            sig { params(text: String, kind: Symbol).returns(T.attached_class) }
            def self.new(text:, kind: :text)
            end

            sig { override.returns({ kind: Symbol, text: String }) }
            def to_hash
            end
          end

          class UnionMember3 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::BrowserSessions::WaitForAction::Condition::UnionMember3,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Symbol) }
            attr_accessor :kind

            sig { params(kind: Symbol).returns(T.attached_class) }
            def self.new(kind: :dom_stable)
            end

            sig { override.returns({ kind: Symbol }) }
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::BrowserSessions::WaitForAction::Condition::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
