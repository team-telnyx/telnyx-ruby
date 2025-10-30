# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::McpServers#update
      class McpServerUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute allowed_tools
        #
        #   @return [Array<String>, nil]
        optional :allowed_tools, Telnyx::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute api_key_ref
        #
        #   @return [String, nil]
        optional :api_key_ref, String, nil?: true

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(id: nil, allowed_tools: nil, api_key_ref: nil, created_at: nil, name: nil, type: nil, url: nil, request_options: {})
        #   @param id [String]
        #   @param allowed_tools [Array<String>, nil]
        #   @param api_key_ref [String, nil]
        #   @param created_at [Time]
        #   @param name [String]
        #   @param type [String]
        #   @param url [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
