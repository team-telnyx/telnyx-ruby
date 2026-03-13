# typed: strong

module Telnyx
  module Models
    module AI
      class ClusterFetchGraphParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::ClusterFetchGraphParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :task_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :cluster_id

        sig { params(cluster_id: Integer).void }
        attr_writer :cluster_id

        sig do
          params(
            task_id: String,
            cluster_id: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(task_id:, cluster_id: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              task_id: String,
              cluster_id: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
