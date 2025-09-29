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

        sig { returns(T.nilable(Integer)) }
        attr_reader :cluster_id

        sig { params(cluster_id: Integer).void }
        attr_writer :cluster_id

        sig do
          params(
            cluster_id: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(cluster_id: nil, request_options: {})
        end

        sig do
          override.returns(
            { cluster_id: Integer, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
