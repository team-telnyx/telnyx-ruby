# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Embeddings
        class Buckets
          # Get all embedded files for a given user bucket, including their processing
          # status.
          #
          # @overload retrieve(bucket_name, request_options: {})
          #
          # @param bucket_name [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Embeddings::BucketRetrieveResponse]
          #
          # @see Telnyx::Models::AI::Embeddings::BucketRetrieveParams
          def retrieve(bucket_name, params = {})
            @client.request(
              method: :get,
              path: ["ai/embeddings/buckets/%1$s", bucket_name],
              model: Telnyx::Models::AI::Embeddings::BucketRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Get all embedding buckets for a user.
          #
          # @overload list(request_options: {})
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Embeddings::BucketListResponse]
          #
          # @see Telnyx::Models::AI::Embeddings::BucketListParams
          def list(params = {})
            @client.request(
              method: :get,
              path: "ai/embeddings/buckets",
              model: Telnyx::Models::AI::Embeddings::BucketListResponse,
              options: params[:request_options]
            )
          end

          # Deletes an entire bucket's embeddings and disables the bucket for AI-use,
          # returning it to normal storage pricing.
          #
          # @overload delete(bucket_name, request_options: {})
          #
          # @param bucket_name [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::AI::Embeddings::BucketDeleteParams
          def delete(bucket_name, params = {})
            @client.request(
              method: :delete,
              path: ["ai/embeddings/buckets/%1$s", bucket_name],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
