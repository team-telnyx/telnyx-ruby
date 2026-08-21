# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Collections
        # Create and manage logical collections of your Telnyx data, tune retrieval
        # settings, manage sources, and run collection-scoped semantic search.
        class Sources
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::AI::Collections::SourceCreateParams} for more details.
          #
          # Attaches a new content source to the specified collection and returns the
          # created source. The source's content is ingested and embedded so it becomes
          # searchable within the collection.
          #
          # @overload create(uuid, source_type:, bucket_id: nil, request_options: {})
          #
          # @param uuid [String] The collection's unique identifier.
          #
          # @param source_type [Symbol, Telnyx::Models::AI::Collections::SourceType] The type of Telnyx data attached as a source. `bucket` requires an additional `b
          #
          # @param bucket_id [String] The Telnyx Storage bucket name. Required when `source_type` is `bucket`; ignored
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Collections::SourceCreateResponse]
          #
          # @see Telnyx::Models::AI::Collections::SourceCreateParams
          def create(uuid, params)
            parsed, options = Telnyx::AI::Collections::SourceCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["ai/collections/%1$s/sources", uuid],
              body: parsed,
              model: Telnyx::Models::AI::Collections::SourceCreateResponse,
              options: options
            )
          end

          # Returns the sources attached to a collection.
          #
          # @overload list(uuid, request_options: {})
          #
          # @param uuid [String] The collection's unique identifier.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Collections::SourceListResponse]
          #
          # @see Telnyx::Models::AI::Collections::SourceListParams
          def list(uuid, params = {})
            @client.request(
              method: :get,
              path: ["ai/collections/%1$s/sources", uuid],
              model: Telnyx::Models::AI::Collections::SourceListResponse,
              options: params[:request_options]
            )
          end

          # Removes a single source from a collection.
          #
          # @overload delete(source_id, uuid:, request_options: {})
          #
          # @param source_id [String] The identifier of the source to remove.
          #
          # @param uuid [String] The collection's unique identifier.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::AI::Collections::SourceDeleteParams
          def delete(source_id, params)
            parsed, options = Telnyx::AI::Collections::SourceDeleteParams.dump_request(params)
            uuid =
              parsed.delete(:uuid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["ai/collections/%1$s/sources/%2$s", uuid, source_id],
              model: NilClass,
              options: options
            )
          end

          # Replaces the collection's entire source set. The response `meta` reports which
          # sources were added, retained, and removed.
          #
          # @overload replace(uuid, sources:, request_options: {})
          #
          # @param uuid [String] The collection's unique identifier.
          #
          # @param sources [Array<Telnyx::Models::AI::Collections::SourceRequest>]
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Collections::SourceReplaceResponse]
          #
          # @see Telnyx::Models::AI::Collections::SourceReplaceParams
          def replace(uuid, params)
            parsed, options = Telnyx::AI::Collections::SourceReplaceParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["ai/collections/%1$s/sources", uuid],
              body: parsed,
              model: Telnyx::Models::AI::Collections::SourceReplaceResponse,
              options: options
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
