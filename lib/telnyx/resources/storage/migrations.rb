# frozen_string_literal: true

module Telnyx
  module Resources
    class Storage
      class Migrations
        # @return [Telnyx::Resources::Storage::Migrations::Actions]
        attr_reader :actions

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Storage::MigrationCreateParams} for more details.
        #
        # Initiate a migration of data from an external provider into Telnyx Cloud
        # Storage. Currently, only S3 is supported.
        #
        # @overload create(source_id:, target_bucket_name:, target_region:, refresh: nil, request_options: {})
        #
        # @param source_id [String] ID of the Migration Source from which to migrate data.
        #
        # @param target_bucket_name [String] Bucket name to migrate the data into. Will default to the same name as the `sour
        #
        # @param target_region [String] Telnyx Cloud Storage region to migrate the data to.
        #
        # @param refresh [Boolean] If true, will continue to poll the source bucket to ensure new data is continual
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::MigrationCreateResponse]
        #
        # @see Telnyx::Models::Storage::MigrationCreateParams
        def create(params)
          parsed, options = Telnyx::Storage::MigrationCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "storage/migrations",
            body: parsed,
            model: Telnyx::Models::Storage::MigrationCreateResponse,
            options: options
          )
        end

        # Get a Migration
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Unique identifier for the data migration.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::MigrationRetrieveResponse]
        #
        # @see Telnyx::Models::Storage::MigrationRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["storage/migrations/%1$s", id],
            model: Telnyx::Models::Storage::MigrationRetrieveResponse,
            options: params[:request_options]
          )
        end

        # List all Migrations
        #
        # @overload list(request_options: {})
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::MigrationListResponse]
        #
        # @see Telnyx::Models::Storage::MigrationListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "storage/migrations",
            model: Telnyx::Models::Storage::MigrationListResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @actions = Telnyx::Resources::Storage::Migrations::Actions.new(client: client)
        end
      end
    end
  end
end
