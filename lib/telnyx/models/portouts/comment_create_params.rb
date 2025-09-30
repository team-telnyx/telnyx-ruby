# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::Comments#create
      class CommentCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute body
        #   Comment to post on this portout request
        #
        #   @return [String, nil]
        optional :body, String

        # @!method initialize(body: nil, request_options: {})
        #   @param body [String] Comment to post on this portout request
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
