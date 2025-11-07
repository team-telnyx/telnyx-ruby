# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::McpServers#update
      class McpServerUpdateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

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

        # @!method initialize(id:, created_at:, name:, type:, url:, allowed_tools: nil, api_key_ref: nil)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param name [String]
        #   @param type [String]
        #   @param url [String]
        #   @param allowed_tools [Array<String>, nil]
        #   @param api_key_ref [String, nil]
      end
    end
  end
end
