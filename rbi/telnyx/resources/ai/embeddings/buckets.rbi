# typed: strong

module Telnyx
  module Resources
    class AI
      class Embeddings
        class Buckets
          # Get all embedded files for a given user bucket, including their processing
          # status.
          sig do
            params(
              bucket_name: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Embeddings::BucketRetrieveResponse)
          end
          def retrieve(bucket_name, request_options: {})
          end

          # Get all embedding buckets for a user.
          sig do
            params(request_options: Telnyx::RequestOptions::OrHash).returns(
              Telnyx::Models::AI::Embeddings::BucketListResponse
            )
          end
          def list(request_options: {})
          end

          # Deletes an entire bucket's embeddings and disables the bucket for AI-use,
          # returning it to normal storage pricing.
          sig do
            params(
              bucket_name: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete(bucket_name, request_options: {})
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
