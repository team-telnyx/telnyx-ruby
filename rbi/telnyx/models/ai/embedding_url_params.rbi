# typed: strong

module Telnyx
  module Models
    module AI
      class EmbeddingURLParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::EmbeddingURLParams, Telnyx::Internal::AnyHash)
          end

        # Name of the bucket to store the embeddings. This bucket must already exist.
        sig { returns(String) }
        attr_accessor :bucket_name

        # The URL of the webpage to embed
        sig { returns(String) }
        attr_accessor :url

        sig { returns(T.nilable(String)) }
        attr_reader :idempotency_key

        sig { params(idempotency_key: String).void }
        attr_writer :idempotency_key

        sig do
          params(
            bucket_name: String,
            url: String,
            idempotency_key: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Name of the bucket to store the embeddings. This bucket must already exist.
          bucket_name:,
          # The URL of the webpage to embed
          url:,
          idempotency_key: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              bucket_name: String,
              url: String,
              idempotency_key: String,
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
