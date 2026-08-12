# typed: strong

module Telnyx
  module Resources
    class AI
      class Collections
        # Create and manage logical collections of your Telnyx data, tune retrieval
        # settings, manage sources, and run collection-scoped semantic search.
        class Sources
          # Attaches a new source to a collection.
          sig do
            params(
              uuid: String,
              source_type: Telnyx::AI::Collections::SourceType::OrSymbol,
              bucket_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Collections::SourceCreateResponse)
          end
          def create(
            # The collection's unique identifier.
            uuid,
            # The type of Telnyx data attached as a source. `bucket` requires an additional
            # `bucket_id`. Only `voice` is searchable today; `meeting_bot`, `message`, and
            # `bucket` attach but are not yet searchable (Coming soon).
            source_type:,
            # The Telnyx Storage bucket name. Required when `source_type` is `bucket`; ignored
            # otherwise.
            bucket_id: nil,
            request_options: {}
          )
          end

          # Returns the sources attached to a collection.
          sig do
            params(
              uuid: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Collections::SourceListResponse)
          end
          def list(
            # The collection's unique identifier.
            uuid,
            request_options: {}
          )
          end

          # Removes a single source from a collection.
          sig do
            params(
              source_id: String,
              uuid: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The identifier of the source to remove.
            source_id,
            # The collection's unique identifier.
            uuid:,
            request_options: {}
          )
          end

          # Replaces the collection's entire source set. The response `meta` reports which
          # sources were added, retained, and removed.
          sig do
            params(
              uuid: String,
              sources: T::Array[Telnyx::AI::Collections::SourceRequest::OrHash],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Collections::SourceReplaceResponse)
          end
          def replace(
            # The collection's unique identifier.
            uuid,
            sources:,
            request_options: {}
          )
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
