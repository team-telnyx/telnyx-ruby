# typed: strong

module Telnyx
  module Models
    module AI
      module Embeddings
        class BucketRetrieveResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Embeddings::BucketRetrieveResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Telnyx::Models::AI::Embeddings::BucketRetrieveResponse::Data
              ]
            )
          end
          attr_accessor :data

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::AI::Embeddings::BucketRetrieveResponse::Data::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Telnyx::Models::AI::Embeddings::BucketRetrieveResponse::Data
                  ]
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Embeddings::BucketRetrieveResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(String) }
            attr_accessor :filename

            sig { returns(String) }
            attr_accessor :status

            sig { returns(T.nilable(String)) }
            attr_reader :error_reason

            sig { params(error_reason: String).void }
            attr_writer :error_reason

            sig { returns(T.nilable(Time)) }
            attr_reader :last_embedded_at

            sig { params(last_embedded_at: Time).void }
            attr_writer :last_embedded_at

            sig { returns(T.nilable(Time)) }
            attr_reader :updated_at

            sig { params(updated_at: Time).void }
            attr_writer :updated_at

            sig do
              params(
                created_at: Time,
                filename: String,
                status: String,
                error_reason: String,
                last_embedded_at: Time,
                updated_at: Time
              ).returns(T.attached_class)
            end
            def self.new(
              created_at:,
              filename:,
              status:,
              error_reason: nil,
              last_embedded_at: nil,
              updated_at: nil
            )
            end

            sig do
              override.returns(
                {
                  created_at: Time,
                  filename: String,
                  status: String,
                  error_reason: String,
                  last_embedded_at: Time,
                  updated_at: Time
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
end
