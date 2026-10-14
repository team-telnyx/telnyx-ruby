# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Avatars#list
      class AvatarListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter_avatar_type
        #   Return only stock or custom avatars.
        #
        #   @return [Symbol, Telnyx::Models::AI::AvatarType, nil]
        optional :filter_avatar_type, enum: -> { Telnyx::AI::AvatarType }

        # @!attribute filter_id
        #   Return the avatar with this exact ID.
        #
        #   @return [Symbol, String, Telnyx::Models::AI::AvatarID, nil]
        optional :filter_id, union: -> { Telnyx::AI::AvatarID }

        # @!attribute filter_name
        #   Return avatars whose names contain this value, using case-insensitive matching.
        #
        #   @return [String, nil]
        optional :filter_name, String

        # @!attribute page_number
        #   Page number to retrieve, starting at 1.
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Number of avatars to return per page.
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(filter_avatar_type: nil, filter_id: nil, filter_name: nil, page_number: nil, page_size: nil, request_options: {})
        #   @param filter_avatar_type [Symbol, Telnyx::Models::AI::AvatarType] Return only stock or custom avatars.
        #
        #   @param filter_id [Symbol, String, Telnyx::Models::AI::AvatarID] Return the avatar with this exact ID.
        #
        #   @param filter_name [String] Return avatars whose names contain this value, using case-insensitive matching.
        #
        #   @param page_number [Integer] Page number to retrieve, starting at 1.
        #
        #   @param page_size [Integer] Number of avatars to return per page.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
