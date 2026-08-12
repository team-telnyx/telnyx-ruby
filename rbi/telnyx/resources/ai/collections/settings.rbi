# typed: strong

module Telnyx
  module Resources
    class AI
      class Collections
        # Create and manage logical collections of your Telnyx data, tune retrieval
        # settings, manage sources, and run collection-scoped semantic search.
        class Settings
          # Replaces the collection's retrieval settings.
          sig do
            params(
              uuid: String,
              retrieval: Telnyx::AI::Collections::RetrievalSettings::OrHash,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Collections::SettingsEnvelope)
          end
          def create(
            # The collection's unique identifier.
            uuid,
            # How documents are retrieved when searching the collection.
            retrieval: nil,
            request_options: {}
          )
          end

          # Returns the retrieval settings for a collection.
          sig do
            params(
              uuid: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Collections::SettingsEnvelope)
          end
          def list(
            # The collection's unique identifier.
            uuid,
            request_options: {}
          )
          end

          # Partially updates the collection's retrieval settings.
          sig do
            params(
              uuid: String,
              retrieval: Telnyx::AI::Collections::RetrievalSettings::OrHash,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Collections::SettingsEnvelope)
          end
          def patch_all(
            # The collection's unique identifier.
            uuid,
            # How documents are retrieved when searching the collection.
            retrieval: nil,
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
