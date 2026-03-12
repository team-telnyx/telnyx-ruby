# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceClones#list
    class VoiceCloneListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_name
      #   Case-insensitive substring filter on the name field.
      #
      #   @return [String, nil]
      optional :filter_name, String

      # @!attribute page_number
      #   Page number for pagination (1-based).
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Number of results per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort
      #   Sort order. Prefix with `-` for descending. Defaults to `-created_at`.
      #
      #   @return [Symbol, Telnyx::Models::VoiceCloneListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::VoiceCloneListParams::Sort }

      # @!method initialize(filter_name: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   @param filter_name [String] Case-insensitive substring filter on the name field.
      #
      #   @param page_number [Integer] Page number for pagination (1-based).
      #
      #   @param page_size [Integer] Number of results per page.
      #
      #   @param sort [Symbol, Telnyx::Models::VoiceCloneListParams::Sort] Sort order. Prefix with `-` for descending. Defaults to `-created_at`.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Sort order. Prefix with `-` for descending. Defaults to `-created_at`.
      module Sort
        extend Telnyx::Internal::Type::Enum

        NAME = :name
        NAME_DESC = :"-name"
        CREATED_AT = :created_at
        CREATED_AT_DESC = :"-created_at"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
