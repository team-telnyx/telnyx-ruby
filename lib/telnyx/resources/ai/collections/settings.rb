# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Collections
        # Create and manage logical collections of your Telnyx data, tune retrieval
        # settings, manage sources, and run collection-scoped semantic search.
        class Settings
          # Replaces the collection's retrieval settings.
          #
          # @overload create(uuid, retrieval: nil, request_options: {})
          #
          # @param uuid [String] The collection's unique identifier.
          #
          # @param retrieval [Telnyx::Models::AI::Collections::RetrievalSettings] How documents are retrieved when searching the collection.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Collections::SettingsEnvelope]
          #
          # @see Telnyx::Models::AI::Collections::SettingCreateParams
          def create(uuid, params = {})
            parsed, options = Telnyx::AI::Collections::SettingCreateParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["ai/collections/%1$s/settings", uuid],
              body: parsed,
              model: Telnyx::AI::Collections::SettingsEnvelope,
              options: options
            )
          end

          # Returns the retrieval settings for a collection.
          #
          # @overload list(uuid, request_options: {})
          #
          # @param uuid [String] The collection's unique identifier.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Collections::SettingsEnvelope]
          #
          # @see Telnyx::Models::AI::Collections::SettingListParams
          def list(uuid, params = {})
            @client.request(
              method: :get,
              path: ["ai/collections/%1$s/settings", uuid],
              model: Telnyx::AI::Collections::SettingsEnvelope,
              options: params[:request_options]
            )
          end

          # Partially updates the collection's retrieval settings.
          #
          # @overload patch_all(uuid, retrieval: nil, request_options: {})
          #
          # @param uuid [String] The collection's unique identifier.
          #
          # @param retrieval [Telnyx::Models::AI::Collections::RetrievalSettings] How documents are retrieved when searching the collection.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Collections::SettingsEnvelope]
          #
          # @see Telnyx::Models::AI::Collections::SettingPatchAllParams
          def patch_all(uuid, params = {})
            parsed, options = Telnyx::AI::Collections::SettingPatchAllParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["ai/collections/%1$s/settings", uuid],
              body: parsed,
              model: Telnyx::AI::Collections::SettingsEnvelope,
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
