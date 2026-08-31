# typed: strong

module Telnyx
  module Resources
    class AI
      # Create and manage logical collections of your Telnyx data, tune retrieval
      # settings, manage sources, and run collection-scoped semantic search.
      class Collections
        # Create and manage logical collections of your Telnyx data, tune retrieval
        # settings, manage sources, and run collection-scoped semantic search.
        sig { returns(Telnyx::Resources::AI::Collections::Settings) }
        attr_reader :settings

        # Create and manage logical collections of your Telnyx data, tune retrieval
        # settings, manage sources, and run collection-scoped semantic search.
        sig { returns(Telnyx::Resources::AI::Collections::Sources) }
        attr_reader :sources

        # Creates a new collection scoped to your organization. Optionally attach sources
        # and retrieval settings at creation time. If `slug` is omitted, one is derived
        # from `name` and must be unique within your organization.
        sig do
          params(
            name: String,
            description: String,
            settings: Telnyx::AI::Collections::RetrievalSettingsWrapper::OrHash,
            slug: String,
            sources: T::Array[Telnyx::AI::Collections::SourceRequest::OrHash],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::CollectionEnvelope)
        end
        def create(
          # Human-readable collection name.
          name:,
          # Optional description.
          description: nil,
          # Optional retrieval settings.
          settings: nil,
          # Optional slug (unique per organization). Derived from `name` when omitted.
          slug: nil,
          # Optional sources to attach at creation time.
          sources: nil,
          request_options: {}
        )
        end

        # Fetches a single collection by its `slug`.
        sig do
          params(
            slug: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::CollectionEnvelope)
        end
        def retrieve(
          # The collection's slug (unique within your organization).
          slug,
          request_options: {}
        )
        end

        # Updates a collection's metadata (`name` and/or `description`). Sources and
        # settings are managed through their own sub-resources.
        sig do
          params(
            uuid: String,
            description: String,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::CollectionEnvelope)
        end
        def update(
          # The collection's unique identifier.
          uuid,
          description: nil,
          name: nil,
          request_options: {}
        )
        end

        # Returns a paginated list of collections in your organization.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[Telnyx::AI::Collection]
          )
        end
        def list(
          # Page number to return (1-based). Defaults to 1.
          page_number: nil,
          # Number of results per page. Defaults to 20.
          page_size: nil,
          request_options: {}
        )
        end

        # Soft-deletes a collection. Its `slug` is freed and may be reused by a new
        # collection.
        sig do
          params(
            uuid: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The collection's unique identifier.
          uuid,
          request_options: {}
        )
        end

        # Fetches a single collection by its `uuid`.
        sig do
          params(
            uuid: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::CollectionEnvelope)
        end
        def retrieve_by_id(
          # The collection's unique identifier.
          uuid,
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
