# typed: strong

module Telnyx
  module Models
    module AI
      class ClusterRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::ClusterRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::Models::AI::ClusterRetrieveResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Telnyx::Models::AI::ClusterRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Models::AI::ClusterRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::AI::ClusterRetrieveResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::ClusterRetrieveResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :bucket

          sig { returns(T::Array[Telnyx::AI::RecursiveCluster]) }
          attr_accessor :clusters

          sig { returns(Telnyx::Messaging10dlc::TaskStatus::TaggedSymbol) }
          attr_accessor :status

          sig do
            params(
              bucket: String,
              clusters: T::Array[Telnyx::AI::RecursiveCluster::OrHash],
              status: Telnyx::Messaging10dlc::TaskStatus::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(bucket:, clusters:, status:)
          end

          sig do
            override.returns(
              {
                bucket: String,
                clusters: T::Array[Telnyx::AI::RecursiveCluster],
                status: Telnyx::Messaging10dlc::TaskStatus::TaggedSymbol
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
