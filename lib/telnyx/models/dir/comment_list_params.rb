# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::Comments#list
      class CommentListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute dir_id
        #
        #   @return [String]
        required :dir_id, String

        # @!attribute comment_type
        #   Restrict to comments of this category. Customer-visible categories only:
        #   internal-only comments are filtered out regardless of this filter.
        #
        #   @return [Symbol, Telnyx::Models::Dir::CommentListParams::CommentType, nil]
        optional :comment_type, enum: -> { Telnyx::Dir::CommentListParams::CommentType }

        # @!attribute page_number
        #   1-based page number. Out-of-range values return an empty page with correct meta.
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Items per page. Maximum 250; values above are clamped to 250.
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(dir_id:, comment_type: nil, page_number: nil, page_size: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::CommentListParams} for more details.
        #
        #   @param dir_id [String]
        #
        #   @param comment_type [Symbol, Telnyx::Models::Dir::CommentListParams::CommentType] Restrict to comments of this category. Customer-visible categories only: interna
        #
        #   @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
        #
        #   @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Restrict to comments of this category. Customer-visible categories only:
        # internal-only comments are filtered out regardless of this filter.
        module CommentType
          extend Telnyx::Internal::Type::Enum

          VETTING_COMMENT = :vetting_comment
          REJECTION_REASON = :rejection_reason
          INTERNAL_NOTE = :internal_note
          NOTIFICATION = :notification
          STATUS_UPDATE = :status_update
          CUSTOMER_INQUIRY = :customer_inquiry
          ADMIN_RESPONSE = :admin_response

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
