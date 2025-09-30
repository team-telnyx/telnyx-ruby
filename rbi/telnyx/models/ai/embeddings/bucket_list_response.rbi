# typed: strong

module Telnyx
  module Models
    module AI
      module Embeddings
        class BucketListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Embeddings::BucketListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(Telnyx::Models::AI::Embeddings::BucketListResponse::Data)
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Models::AI::Embeddings::BucketListResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Models::AI::Embeddings::BucketListResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              { data: Telnyx::Models::AI::Embeddings::BucketListResponse::Data }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Embeddings::BucketListResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T::Array[String]) }
            attr_accessor :buckets

            sig { params(buckets: T::Array[String]).returns(T.attached_class) }
            def self.new(buckets:)
            end

            sig { override.returns({ buckets: T::Array[String] }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
