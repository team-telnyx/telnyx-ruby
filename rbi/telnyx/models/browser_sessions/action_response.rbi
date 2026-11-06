# typed: strong

module Telnyx
  module Models
    module BrowserSessions
      class ActionResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BrowserSessions::ActionResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Time)) }
        attr_accessor :completed_at

        sig { returns(Time) }
        attr_accessor :created_at

        # Null unless an execution failure is recorded. Action failures (policy_denied,
        # stale_observation, stale_ref, navigation_blocked, timeout, execution_lost,
        # result_too_large) are returned on the action resource with HTTP 200. An unknown
        # action with execution_lost has retryable=false; inspect session state and
        # reconcile possible effects before any new action. Separately, a request may
        # return HTTP 503 with a top-level execution_lost error and retryable=true; that
        # is not proof of safe re-execution.
        sig do
          returns(T.nilable(Telnyx::BrowserSessions::ActionResponse::Error))
        end
        attr_reader :error

        sig do
          params(
            error:
              T.nilable(Telnyx::BrowserSessions::ActionResponse::Error::OrHash)
          ).void
        end
        attr_writer :error

        # Normalized request metadata; defaults may be materialized and fill values are
        # redacted as {redacted: true, length: number}, including inside batch actions.
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :request

        sig do
          returns(T.nilable(Telnyx::BrowserSessions::ActionResponse::Result))
        end
        attr_reader :result

        sig do
          params(
            result:
              T.nilable(Telnyx::BrowserSessions::ActionResponse::Result::OrHash)
          ).void
        end
        attr_writer :result

        sig { returns(Integer) }
        attr_accessor :seq

        sig { returns(String) }
        attr_accessor :session_id

        sig { returns(T.nilable(Time)) }
        attr_accessor :started_at

        # POST returns 202 for queued or running actions. Terminal states are succeeded,
        # failed, and unknown (the execution outcome could not be determined, with
        # error.code=execution_lost). GET returns 200 for both nonterminal and terminal
        # states.
        sig do
          returns(Telnyx::BrowserSessions::ActionResponse::Status::TaggedSymbol)
        end
        attr_accessor :status

        sig { returns(String) }
        attr_accessor :type

        sig do
          params(
            id: String,
            completed_at: T.nilable(Time),
            created_at: Time,
            error:
              T.nilable(Telnyx::BrowserSessions::ActionResponse::Error::OrHash),
            request: T::Hash[Symbol, T.anything],
            result:
              T.nilable(
                Telnyx::BrowserSessions::ActionResponse::Result::OrHash
              ),
            seq: Integer,
            session_id: String,
            started_at: T.nilable(Time),
            status: Telnyx::BrowserSessions::ActionResponse::Status::OrSymbol,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          completed_at:,
          created_at:,
          # Null unless an execution failure is recorded. Action failures (policy_denied,
          # stale_observation, stale_ref, navigation_blocked, timeout, execution_lost,
          # result_too_large) are returned on the action resource with HTTP 200. An unknown
          # action with execution_lost has retryable=false; inspect session state and
          # reconcile possible effects before any new action. Separately, a request may
          # return HTTP 503 with a top-level execution_lost error and retryable=true; that
          # is not proof of safe re-execution.
          error:,
          # Normalized request metadata; defaults may be materialized and fill values are
          # redacted as {redacted: true, length: number}, including inside batch actions.
          request:,
          result:,
          seq:,
          session_id:,
          started_at:,
          # POST returns 202 for queued or running actions. Terminal states are succeeded,
          # failed, and unknown (the execution outcome could not be determined, with
          # error.code=execution_lost). GET returns 200 for both nonterminal and terminal
          # states.
          status:,
          type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              completed_at: T.nilable(Time),
              created_at: Time,
              error: T.nilable(Telnyx::BrowserSessions::ActionResponse::Error),
              request: T::Hash[Symbol, T.anything],
              result:
                T.nilable(Telnyx::BrowserSessions::ActionResponse::Result),
              seq: Integer,
              session_id: String,
              started_at: T.nilable(Time),
              status:
                Telnyx::BrowserSessions::ActionResponse::Status::TaggedSymbol,
              type: String
            }
          )
        end
        def to_hash
        end

        class Error < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::BrowserSessions::ActionResponse::Error,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :code

          sig { returns(T::Boolean) }
          attr_accessor :retryable

          # Null unless an execution failure is recorded. Action failures (policy_denied,
          # stale_observation, stale_ref, navigation_blocked, timeout, execution_lost,
          # result_too_large) are returned on the action resource with HTTP 200. An unknown
          # action with execution_lost has retryable=false; inspect session state and
          # reconcile possible effects before any new action. Separately, a request may
          # return HTTP 503 with a top-level execution_lost error and retryable=true; that
          # is not proof of safe re-execution.
          sig do
            params(code: String, retryable: T::Boolean).returns(
              T.attached_class
            )
          end
          def self.new(code:, retryable:)
          end

          sig { override.returns({ code: String, retryable: T::Boolean }) }
          def to_hash
          end
        end

        class Result < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::BrowserSessions::ActionResponse::Result,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::BrowserSessions::ActionResponse::Result::Artifact
              )
            )
          end
          attr_reader :artifact

          sig do
            params(
              artifact:
                Telnyx::BrowserSessions::ActionResponse::Result::Artifact::OrHash
            ).void
          end
          attr_writer :artifact

          # Full tree and refs are delivered only in the original successful POST response
          # when completed within wait_seconds. GET polling and idempotent replays return
          # metadata with an empty tree and refs plus ref_count. Submit a fresh observe
          # action to obtain usable refs.
          sig do
            returns(
              T.nilable(
                Telnyx::BrowserSessions::ActionResponse::Result::Observation
              )
            )
          end
          attr_reader :observation

          sig do
            params(
              observation:
                Telnyx::BrowserSessions::ActionResponse::Result::Observation::OrHash
            ).void
          end
          attr_writer :observation

          # Present only for batch actions.
          sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
          attr_reader :results

          sig { params(results: T::Array[T::Hash[Symbol, T.anything]]).void }
          attr_writer :results

          sig { returns(T.nilable(String)) }
          attr_reader :title

          sig { params(title: String).void }
          attr_writer :title

          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig do
            params(
              artifact:
                Telnyx::BrowserSessions::ActionResponse::Result::Artifact::OrHash,
              observation:
                Telnyx::BrowserSessions::ActionResponse::Result::Observation::OrHash,
              results: T::Array[T::Hash[Symbol, T.anything]],
              title: String,
              url: String
            ).returns(T.attached_class)
          end
          def self.new(
            artifact: nil,
            # Full tree and refs are delivered only in the original successful POST response
            # when completed within wait_seconds. GET polling and idempotent replays return
            # metadata with an empty tree and refs plus ref_count. Submit a fresh observe
            # action to obtain usable refs.
            observation: nil,
            # Present only for batch actions.
            results: nil,
            title: nil,
            url: nil
          )
          end

          sig do
            override.returns(
              {
                artifact:
                  Telnyx::BrowserSessions::ActionResponse::Result::Artifact,
                observation:
                  Telnyx::BrowserSessions::ActionResponse::Result::Observation,
                results: T::Array[T::Hash[Symbol, T.anything]],
                title: String,
                url: String
              }
            )
          end
          def to_hash
          end

          class Artifact < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::BrowserSessions::ActionResponse::Result::Artifact,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :artifact_id

            sig { params(artifact_id: String).void }
            attr_writer :artifact_id

            sig { returns(T.nilable(String)) }
            attr_reader :content_type

            sig { params(content_type: String).void }
            attr_writer :content_type

            sig { returns(T.nilable(Integer)) }
            attr_reader :size_bytes

            sig { params(size_bytes: Integer).void }
            attr_writer :size_bytes

            sig do
              params(
                artifact_id: String,
                content_type: String,
                size_bytes: Integer
              ).returns(T.attached_class)
            end
            def self.new(artifact_id: nil, content_type: nil, size_bytes: nil)
            end

            sig do
              override.returns(
                {
                  artifact_id: String,
                  content_type: String,
                  size_bytes: Integer
                }
              )
            end
            def to_hash
            end
          end

          class Observation < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::BrowserSessions::ActionResponse::Result::Observation,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :observation_id

            sig { params(observation_id: String).void }
            attr_writer :observation_id

            # Number of refs in the original observation, present on stored observation
            # metadata.
            sig { returns(T.nilable(Integer)) }
            attr_reader :ref_count

            sig { params(ref_count: Integer).void }
            attr_writer :ref_count

            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :refs

            sig { params(refs: T::Hash[Symbol, T.anything]).void }
            attr_writer :refs

            sig { returns(T.nilable(String)) }
            attr_reader :title

            sig { params(title: String).void }
            attr_writer :title

            sig { returns(T.nilable(String)) }
            attr_reader :tree

            sig { params(tree: String).void }
            attr_writer :tree

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :truncated

            sig { params(truncated: T::Boolean).void }
            attr_writer :truncated

            sig { returns(T.nilable(String)) }
            attr_reader :url

            sig { params(url: String).void }
            attr_writer :url

            # Full tree and refs are delivered only in the original successful POST response
            # when completed within wait_seconds. GET polling and idempotent replays return
            # metadata with an empty tree and refs plus ref_count. Submit a fresh observe
            # action to obtain usable refs.
            sig do
              params(
                observation_id: String,
                ref_count: Integer,
                refs: T::Hash[Symbol, T.anything],
                title: String,
                tree: String,
                truncated: T::Boolean,
                url: String
              ).returns(T.attached_class)
            end
            def self.new(
              observation_id: nil,
              # Number of refs in the original observation, present on stored observation
              # metadata.
              ref_count: nil,
              refs: nil,
              title: nil,
              tree: nil,
              truncated: nil,
              url: nil
            )
            end

            sig do
              override.returns(
                {
                  observation_id: String,
                  ref_count: Integer,
                  refs: T::Hash[Symbol, T.anything],
                  title: String,
                  tree: String,
                  truncated: T::Boolean,
                  url: String
                }
              )
            end
            def to_hash
            end
          end
        end

        # POST returns 202 for queued or running actions. Terminal states are succeeded,
        # failed, and unknown (the execution outcome could not be determined, with
        # error.code=execution_lost). GET returns 200 for both nonterminal and terminal
        # states.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::BrowserSessions::ActionResponse::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUEUED =
            T.let(
              :queued,
              Telnyx::BrowserSessions::ActionResponse::Status::TaggedSymbol
            )
          RUNNING =
            T.let(
              :running,
              Telnyx::BrowserSessions::ActionResponse::Status::TaggedSymbol
            )
          SUCCEEDED =
            T.let(
              :succeeded,
              Telnyx::BrowserSessions::ActionResponse::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::BrowserSessions::ActionResponse::Status::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :unknown,
              Telnyx::BrowserSessions::ActionResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::BrowserSessions::ActionResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
