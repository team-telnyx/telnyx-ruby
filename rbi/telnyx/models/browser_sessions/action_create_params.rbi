# typed: strong

module Telnyx
  module Models
    module BrowserSessions
      class ActionCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BrowserSessions::ActionCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Discriminated union on type. Variants are strict: unknown fields are rejected
        # with 400. Reusing an idempotency_key with an identical request replays the
        # original resource; with a different request it returns 409 idempotency_conflict.
        sig do
          returns(
            T.any(
              Telnyx::BrowserSessions::NavigateAction,
              Telnyx::BrowserSessions::ObserveAction,
              Telnyx::BrowserSessions::ClickAction,
              Telnyx::BrowserSessions::FillAction,
              Telnyx::BrowserSessions::SelectAction,
              Telnyx::BrowserSessions::PressAction,
              Telnyx::BrowserSessions::ScrollAction,
              Telnyx::BrowserSessions::ScreenshotAction,
              Telnyx::BrowserSessions::WaitForAction,
              Telnyx::BrowserSessions::ActionCreateParams::Body::BatchAction
            )
          )
        end
        attr_accessor :body

        # Maximum seconds the submission request waits for completion, not an execution
        # timeout. If still queued or running, returns 202 without cancelling execution;
        # poll the returned action ID.
        sig { returns(T.nilable(Integer)) }
        attr_reader :wait_seconds

        sig { params(wait_seconds: Integer).void }
        attr_writer :wait_seconds

        sig do
          params(
            id: String,
            body:
              T.any(
                Telnyx::BrowserSessions::NavigateAction::OrHash,
                Telnyx::BrowserSessions::ObserveAction::OrHash,
                Telnyx::BrowserSessions::ClickAction::OrHash,
                Telnyx::BrowserSessions::FillAction::OrHash,
                Telnyx::BrowserSessions::SelectAction::OrHash,
                Telnyx::BrowserSessions::PressAction::OrHash,
                Telnyx::BrowserSessions::ScrollAction::OrHash,
                Telnyx::BrowserSessions::ScreenshotAction::OrHash,
                Telnyx::BrowserSessions::WaitForAction::OrHash,
                Telnyx::BrowserSessions::ActionCreateParams::Body::BatchAction::OrHash
              ),
            wait_seconds: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Discriminated union on type. Variants are strict: unknown fields are rejected
          # with 400. Reusing an idempotency_key with an identical request replays the
          # original resource; with a different request it returns 409 idempotency_conflict.
          body:,
          # Maximum seconds the submission request waits for completion, not an execution
          # timeout. If still queued or running, returns 202 without cancelling execution;
          # poll the returned action ID.
          wait_seconds: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              body:
                T.any(
                  Telnyx::BrowserSessions::NavigateAction,
                  Telnyx::BrowserSessions::ObserveAction,
                  Telnyx::BrowserSessions::ClickAction,
                  Telnyx::BrowserSessions::FillAction,
                  Telnyx::BrowserSessions::SelectAction,
                  Telnyx::BrowserSessions::PressAction,
                  Telnyx::BrowserSessions::ScrollAction,
                  Telnyx::BrowserSessions::ScreenshotAction,
                  Telnyx::BrowserSessions::WaitForAction,
                  Telnyx::BrowserSessions::ActionCreateParams::Body::BatchAction
                ),
              wait_seconds: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Discriminated union on type. Variants are strict: unknown fields are rejected
        # with 400. Reusing an idempotency_key with an identical request replays the
        # original resource; with a different request it returns 409 idempotency_conflict.
        module Body
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::BrowserSessions::NavigateAction,
                Telnyx::BrowserSessions::ObserveAction,
                Telnyx::BrowserSessions::ClickAction,
                Telnyx::BrowserSessions::FillAction,
                Telnyx::BrowserSessions::SelectAction,
                Telnyx::BrowserSessions::PressAction,
                Telnyx::BrowserSessions::ScrollAction,
                Telnyx::BrowserSessions::ScreenshotAction,
                Telnyx::BrowserSessions::WaitForAction,
                Telnyx::BrowserSessions::ActionCreateParams::Body::BatchAction
              )
            end

          class BatchAction < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::BrowserSessions::ActionCreateParams::Body::BatchAction,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  T.any(
                    Telnyx::BrowserSessions::NavigateAction,
                    Telnyx::BrowserSessions::ObserveAction,
                    Telnyx::BrowserSessions::ClickAction,
                    Telnyx::BrowserSessions::FillAction,
                    Telnyx::BrowserSessions::SelectAction,
                    Telnyx::BrowserSessions::PressAction,
                    Telnyx::BrowserSessions::ScrollAction,
                    Telnyx::BrowserSessions::ScreenshotAction,
                    Telnyx::BrowserSessions::WaitForAction
                  )
                ]
              )
            end
            attr_accessor :actions

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

            # Execute 1-50 sub-actions sequentially. Non-recursive: a batch inside a batch is
            # rejected (400). An empty array is rejected (400). A failed sub-action stops the
            # batch; earlier browser mutations are not rolled back, but partial sub-action
            # results are not returned.
            sig do
              params(
                actions:
                  T::Array[
                    T.any(
                      Telnyx::BrowserSessions::NavigateAction::OrHash,
                      Telnyx::BrowserSessions::ObserveAction::OrHash,
                      Telnyx::BrowserSessions::ClickAction::OrHash,
                      Telnyx::BrowserSessions::FillAction::OrHash,
                      Telnyx::BrowserSessions::SelectAction::OrHash,
                      Telnyx::BrowserSessions::PressAction::OrHash,
                      Telnyx::BrowserSessions::ScrollAction::OrHash,
                      Telnyx::BrowserSessions::ScreenshotAction::OrHash,
                      Telnyx::BrowserSessions::WaitForAction::OrHash
                    )
                  ],
                idempotency_key: String,
                include_observation: T::Boolean,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              actions:,
              idempotency_key: nil,
              include_observation: nil,
              type: :batch
            )
            end

            sig do
              override.returns(
                {
                  actions:
                    T::Array[
                      T.any(
                        Telnyx::BrowserSessions::NavigateAction,
                        Telnyx::BrowserSessions::ObserveAction,
                        Telnyx::BrowserSessions::ClickAction,
                        Telnyx::BrowserSessions::FillAction,
                        Telnyx::BrowserSessions::SelectAction,
                        Telnyx::BrowserSessions::PressAction,
                        Telnyx::BrowserSessions::ScrollAction,
                        Telnyx::BrowserSessions::ScreenshotAction,
                        Telnyx::BrowserSessions::WaitForAction
                      )
                    ],
                  type: Symbol,
                  idempotency_key: String,
                  include_observation: T::Boolean
                }
              )
            end
            def to_hash
            end

            # Navigate to a URL.
            module Action
              extend Telnyx::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    Telnyx::BrowserSessions::NavigateAction,
                    Telnyx::BrowserSessions::ObserveAction,
                    Telnyx::BrowserSessions::ClickAction,
                    Telnyx::BrowserSessions::FillAction,
                    Telnyx::BrowserSessions::SelectAction,
                    Telnyx::BrowserSessions::PressAction,
                    Telnyx::BrowserSessions::ScrollAction,
                    Telnyx::BrowserSessions::ScreenshotAction,
                    Telnyx::BrowserSessions::WaitForAction
                  )
                end

              sig do
                override.returns(
                  T::Array[
                    Telnyx::BrowserSessions::ActionCreateParams::Body::BatchAction::Action::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::BrowserSessions::ActionCreateParams::Body::Variants
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
