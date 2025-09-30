# typed: strong

module Telnyx
  module Models
    module AI
      module FineTuning
        class JobListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::FineTuning::JobListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T::Array[Telnyx::AI::FineTuning::FineTuningJob]) }
          attr_accessor :data

          sig do
            params(
              data: T::Array[Telnyx::AI::FineTuning::FineTuningJob::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              { data: T::Array[Telnyx::AI::FineTuning::FineTuningJob] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
