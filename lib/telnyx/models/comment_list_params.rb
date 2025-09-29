# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Comments#list
    class CommentListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[comment_record_type], filter[comment_record_id]
      #
      #   @return [Telnyx::Models::CommentListParams::Filter, nil]
      optional :filter, -> { Telnyx::CommentListParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CommentListParams} for more details.
      #
      #   @param filter [Telnyx::Models::CommentListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[comment_rec
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute comment_record_id
        #   ID of the record the comments relate to
        #
        #   @return [String, nil]
        optional :comment_record_id, String

        # @!attribute comment_record_type
        #   Record type that the comment relates to
        #
        #   @return [Symbol, Telnyx::Models::CommentListParams::Filter::CommentRecordType, nil]
        optional :comment_record_type, enum: -> { Telnyx::CommentListParams::Filter::CommentRecordType }

        # @!method initialize(comment_record_id: nil, comment_record_type: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[comment_record_type], filter[comment_record_id]
        #
        #   @param comment_record_id [String] ID of the record the comments relate to
        #
        #   @param comment_record_type [Symbol, Telnyx::Models::CommentListParams::Filter::CommentRecordType] Record type that the comment relates to

        # Record type that the comment relates to
        #
        # @see Telnyx::Models::CommentListParams::Filter#comment_record_type
        module CommentRecordType
          extend Telnyx::Internal::Type::Enum

          SUB_NUMBER_ORDER = :sub_number_order
          REQUIREMENT_GROUP = :requirement_group

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
