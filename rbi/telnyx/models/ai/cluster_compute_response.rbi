# typed: strong

module Telnyx
  module Models
    module AI
      class ClusterComputeResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::ClusterComputeResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::Models::AI::ClusterComputeResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Telnyx::Models::AI::ClusterComputeResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Models::AI::ClusterComputeResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::AI::ClusterComputeResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::ClusterComputeResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :task_id

          sig { params(task_id: String).returns(T.attached_class) }
          def self.new(task_id:)
          end

          sig { override.returns({ task_id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
