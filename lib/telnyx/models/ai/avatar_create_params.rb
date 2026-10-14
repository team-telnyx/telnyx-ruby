# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Avatars#create
      class AvatarCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute image_file
        #   JPEG, PNG, or WebP image file. The maximum file size is 10 MiB.
        #
        #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart]
        required :image_file, Telnyx::Internal::Type::FileInput

        # @!attribute name
        #   Customer-facing name of the custom avatar.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(image_file:, name:, request_options: {})
        #   @param image_file [Pathname, StringIO, IO, String, Telnyx::FilePart] JPEG, PNG, or WebP image file. The maximum file size is 10 MiB.
        #
        #   @param name [String] Customer-facing name of the custom avatar.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
