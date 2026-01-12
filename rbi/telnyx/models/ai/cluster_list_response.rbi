# typed: strong

module Telnyx
  module Models
    module AI
      class ClusterListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::ClusterListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :bucket

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(Time) }
        attr_accessor :finished_at

        sig { returns(Integer) }
        attr_accessor :min_cluster_size

        sig { returns(Integer) }
        attr_accessor :min_subcluster_size

        sig { returns(Telnyx::Messaging10dlc::TaskStatus::TaggedSymbol) }
        attr_accessor :status

        sig { returns(String) }
        attr_accessor :task_id

        sig do
          params(
            bucket: String,
            created_at: Time,
            finished_at: Time,
            min_cluster_size: Integer,
            min_subcluster_size: Integer,
            status: Telnyx::Messaging10dlc::TaskStatus::OrSymbol,
            task_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          bucket:,
          created_at:,
          finished_at:,
          min_cluster_size:,
          min_subcluster_size:,
          status:,
          task_id:
        )
        end

        sig do
          override.returns(
            {
              bucket: String,
              created_at: Time,
              finished_at: Time,
              min_cluster_size: Integer,
              min_subcluster_size: Integer,
              status: Telnyx::Messaging10dlc::TaskStatus::TaggedSymbol,
              task_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
