# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::Comments#create
      class CommentCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute dir_id
        #
        #   @return [String]
        required :dir_id, String

        # @!attribute content
        #   Comment body. 1–5000 characters.
        #
        #   @return [String]
        required :content, String

        # @!attribute parent_comment_id
        #   Optional parent comment id to thread this reply under.
        #
        #   @return [String, nil]
        optional :parent_comment_id, String

        # @!method initialize(dir_id:, content:, parent_comment_id: nil, request_options: {})
        #   @param dir_id [String]
        #
        #   @param content [String] Comment body. 1–5000 characters.
        #
        #   @param parent_comment_id [String] Optional parent comment id to thread this reply under.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
