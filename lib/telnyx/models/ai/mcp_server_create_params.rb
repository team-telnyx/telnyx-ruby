# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::McpServers#create
      class McpServerCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!attribute allowed_tools
        #
        #   @return [Array<String>, nil]
        optional :allowed_tools, Telnyx::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute api_key_ref
        #
        #   @return [String, nil]
        optional :api_key_ref, String, nil?: true

        # @!method initialize(name:, type:, url:, allowed_tools: nil, api_key_ref: nil, request_options: {})
        #   @param name [String]
        #   @param type [String]
        #   @param url [String]
        #   @param allowed_tools [Array<String>, nil]
        #   @param api_key_ref [String, nil]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
