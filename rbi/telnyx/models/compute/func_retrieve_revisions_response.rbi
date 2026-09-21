# typed: strong

module Telnyx
  module Models
    module Compute
      class FuncRetrieveRevisionsResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Compute::FuncRetrieveRevisionsResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::Compute::FuncRetrieveRevisionsResponse::Data
              ]
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::Compute::FuncRetrieveRevisionsResponse::Data::OrHash
              ]
          ).void
        end
        attr_writer :data

        sig do
          returns(
            T.nilable(Telnyx::Compute::FunctionsObservabilityPaginationMeta)
          )
        end
        attr_reader :meta

        sig do
          params(
            meta: Telnyx::Compute::FunctionsObservabilityPaginationMeta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::Compute::FuncRetrieveRevisionsResponse::Data::OrHash
              ],
            meta: Telnyx::Compute::FunctionsObservabilityPaginationMeta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::Models::Compute::FuncRetrieveRevisionsResponse::Data
                ],
              meta: Telnyx::Compute::FunctionsObservabilityPaginationMeta
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Compute::FuncRetrieveRevisionsResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :active

          sig { params(active: T::Boolean).void }
          attr_writer :active

          sig { returns(T.nilable(Time)) }
          attr_reader :build_ok_at

          sig { params(build_ok_at: Time).void }
          attr_writer :build_ok_at

          sig { returns(T.nilable(String)) }
          attr_reader :build_status

          sig { params(build_status: String).void }
          attr_writer :build_status

          sig { returns(T.nilable(String)) }
          attr_reader :commit_sha

          sig { params(commit_sha: String).void }
          attr_writer :commit_sha

          sig { returns(T.nilable(String)) }
          attr_reader :deploy_status

          sig { params(deploy_status: String).void }
          attr_writer :deploy_status

          sig { returns(T.nilable(String)) }
          attr_reader :failure_reason

          sig { params(failure_reason: String).void }
          attr_writer :failure_reason

          sig { returns(T.nilable(String)) }
          attr_reader :failure_stage

          sig { params(failure_stage: String).void }
          attr_writer :failure_stage

          sig { returns(T.nilable(String)) }
          attr_reader :image

          sig { params(image: String).void }
          attr_writer :image

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig { returns(T.nilable(String)) }
          attr_reader :revision_id

          sig { params(revision_id: String).void }
          attr_writer :revision_id

          sig { returns(T.nilable(Time)) }
          attr_reader :shipped_at

          sig { params(shipped_at: Time).void }
          attr_writer :shipped_at

          sig { returns(T.nilable(String)) }
          attr_reader :shipped_by

          sig { params(shipped_by: String).void }
          attr_writer :shipped_by

          sig do
            params(
              active: T::Boolean,
              build_ok_at: Time,
              build_status: String,
              commit_sha: String,
              deploy_status: String,
              failure_reason: String,
              failure_stage: String,
              image: String,
              record_type: String,
              revision_id: String,
              shipped_at: Time,
              shipped_by: String
            ).returns(T.attached_class)
          end
          def self.new(
            active: nil,
            build_ok_at: nil,
            build_status: nil,
            commit_sha: nil,
            deploy_status: nil,
            failure_reason: nil,
            failure_stage: nil,
            image: nil,
            record_type: nil,
            revision_id: nil,
            shipped_at: nil,
            shipped_by: nil
          )
          end

          sig do
            override.returns(
              {
                active: T::Boolean,
                build_ok_at: Time,
                build_status: String,
                commit_sha: String,
                deploy_status: String,
                failure_reason: String,
                failure_stage: String,
                image: String,
                record_type: String,
                revision_id: String,
                shipped_at: Time,
                shipped_by: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
