# frozen_string_literal: true

module Telnyx
  module Resources
    class Storage
      class MigrationSources
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Storage::MigrationSourceCreateParams} for more details.
        #
        # Create a source from which data can be migrated from.
        #
        # @overload create(bucket_name:, provider:, provider_auth:, source_region: nil, request_options: {})
        #
        # @param bucket_name [String] Bucket name to migrate the data from.
        #
        # @param provider [Symbol, Telnyx::Models::Storage::MigrationSourceParams::Provider] Cloud provider from which to migrate data. Use 'telnyx' if you want to migrate d
        #
        # @param provider_auth [Telnyx::Models::Storage::MigrationSourceParams::ProviderAuth]
        #
        # @param source_region [String] For intra-Telnyx buckets migration, specify the source bucket region in this fie
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::MigrationSourceCreateResponse]
        #
        # @see Telnyx::Models::Storage::MigrationSourceCreateParams
        def create(params)
          parsed, options = Telnyx::Storage::MigrationSourceCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "storage/migration_sources",
            body: parsed,
            model: Telnyx::Models::Storage::MigrationSourceCreateResponse,
            options: options
          )
        end

        # Get a Migration Source
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Unique identifier for the data migration source.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::MigrationSourceRetrieveResponse]
        #
        # @see Telnyx::Models::Storage::MigrationSourceRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["storage/migration_sources/%1$s", id],
            model: Telnyx::Models::Storage::MigrationSourceRetrieveResponse,
            options: params[:request_options]
          )
        end

        # List all Migration Sources
        #
        # @overload list(request_options: {})
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::MigrationSourceListResponse]
        #
        # @see Telnyx::Models::Storage::MigrationSourceListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "storage/migration_sources",
            model: Telnyx::Models::Storage::MigrationSourceListResponse,
            options: params[:request_options]
          )
        end

        # Delete a Migration Source
        #
        # @overload delete(id, request_options: {})
        #
        # @param id [String] Unique identifier for the data migration source.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::MigrationSourceDeleteResponse]
        #
        # @see Telnyx::Models::Storage::MigrationSourceDeleteParams
        def delete(id, params = {})
          @client.request(
            method: :delete,
            path: ["storage/migration_sources/%1$s", id],
            model: Telnyx::Models::Storage::MigrationSourceDeleteResponse,
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
