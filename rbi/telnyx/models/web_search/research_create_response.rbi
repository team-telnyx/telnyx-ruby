# typed: strong

module Telnyx
  module Models
    module WebSearch
      class ResearchCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::WebSearch::ResearchCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Synchronous research response (when `background` is false or unset).
        sig do
          returns(
            T.nilable(
              Telnyx::Models::WebSearch::ResearchCreateResponse::Data::Variants
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T.any(
                Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseSync::OrHash,
                Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync::OrHash
              )
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              T.any(
                Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseSync::OrHash,
                Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Synchronous research response (when `background` is false or unset).
          data: nil
        )
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::WebSearch::ResearchCreateResponse::Data::Variants
            }
          )
        end
        def to_hash
        end

        # Synchronous research response (when `background` is false or unset).
        module Data
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseSync,
                Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync
              )
            end

          class ResearchResponseSync < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseSync,
                  Telnyx::Internal::AnyHash
                )
              end

            # The synthesized research answer.
            sig { returns(String) }
            attr_accessor :answer

            # Sources cited in the answer.
            sig do
              returns(T.nilable(T::Array[Telnyx::WebSearch::ResearchCitation]))
            end
            attr_reader :citations

            sig do
              params(
                citations: T::Array[Telnyx::WebSearch::ResearchCitation::OrHash]
              ).void
            end
            attr_writer :citations

            # Synchronous research response (when `background` is false or unset).
            sig do
              params(
                answer: String,
                citations: T::Array[Telnyx::WebSearch::ResearchCitation::OrHash]
              ).returns(T.attached_class)
            end
            def self.new(
              # The synthesized research answer.
              answer:,
              # Sources cited in the answer.
              citations: nil
            )
            end

            sig do
              override.returns(
                {
                  answer: String,
                  citations: T::Array[Telnyx::WebSearch::ResearchCitation]
                }
              )
            end
            def to_hash
            end
          end

          class ResearchResponseAsync < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync,
                  Telnyx::Internal::AnyHash
                )
              end

            # Current status of the research task.
            sig do
              returns(
                Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Unique identifier for the research task. Use this to poll the status.
            sig { returns(String) }
            attr_accessor :task_id

            # Asynchronous research response (when `background` is true).
            sig do
              params(
                status:
                  Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync::Status::OrSymbol,
                task_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Current status of the research task.
              status:,
              # Unique identifier for the research task. Use this to poll the status.
              task_id:
            )
            end

            sig do
              override.returns(
                {
                  status:
                    Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync::Status::TaggedSymbol,
                  task_id: String
                }
              )
            end
            def to_hash
            end

            # Current status of the research task.
            module Status
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PENDING =
                T.let(
                  :pending,
                  Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync::Status::TaggedSymbol
                )
              RUNNING =
                T.let(
                  :running,
                  Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync::Status::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync::Status::TaggedSymbol
                )
              FAILED =
                T.let(
                  :failed,
                  Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::WebSearch::ResearchCreateResponse::Data::Variants
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
