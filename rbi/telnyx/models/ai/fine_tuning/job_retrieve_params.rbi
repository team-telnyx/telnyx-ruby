# typed: strong

module Telnyx
  module Models
    module AI
      module FineTuning
        class JobRetrieveParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::FineTuning::JobRetrieveParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :job_id

          sig do
            params(
              job_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(job_id:, request_options: {})
          end

          sig do
            override.returns(
              { job_id: String, request_options: Telnyx::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
