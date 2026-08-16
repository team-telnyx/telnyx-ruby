# typed: strong

module Telnyx
  module Models
    module WebSearch
      class ResearchRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::WebSearch::ResearchRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Current status of the research task.
          sig do
            returns(
              Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The research task identifier.
          sig { returns(String) }
          attr_accessor :task_id

          # The synthesized research answer (present when status is `completed`).
          sig { returns(T.nilable(String)) }
          attr_reader :answer

          sig { params(answer: String).void }
          attr_writer :answer

          # Sources cited in the answer (present when status is `completed`).
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

          # Always present in poll responses; `null` unless the task failed.
          sig { returns(T.nilable(String)) }
          attr_accessor :error

          sig do
            params(
              status:
                Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data::Status::OrSymbol,
              task_id: String,
              answer: String,
              citations: T::Array[Telnyx::WebSearch::ResearchCitation::OrHash],
              error: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Current status of the research task.
            status:,
            # The research task identifier.
            task_id:,
            # The synthesized research answer (present when status is `completed`).
            answer: nil,
            # Sources cited in the answer (present when status is `completed`).
            citations: nil,
            # Always present in poll responses; `null` unless the task failed.
            error: nil
          )
          end

          sig do
            override.returns(
              {
                status:
                  Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data::Status::TaggedSymbol,
                task_id: String,
                answer: String,
                citations: T::Array[Telnyx::WebSearch::ResearchCitation],
                error: T.nilable(String)
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
                  Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data::Status::TaggedSymbol
              )
            RUNNING =
              T.let(
                :running,
                Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data::Status::TaggedSymbol
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
end
