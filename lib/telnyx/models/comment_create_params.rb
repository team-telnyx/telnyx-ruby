# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Comments#create
    class CommentCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [String, nil]
      optional :body, String

      # @!attribute comment_record_id
      #
      #   @return [String, nil]
      optional :comment_record_id, String

      # @!attribute comment_record_type
      #
      #   @return [Symbol, Telnyx::Models::CommentCreateParams::CommentRecordType, nil]
      optional :comment_record_type, enum: -> { Telnyx::CommentCreateParams::CommentRecordType }

      # @!method initialize(body: nil, comment_record_id: nil, comment_record_type: nil, request_options: {})
      #   @param body [String]
      #   @param comment_record_id [String]
      #   @param comment_record_type [Symbol, Telnyx::Models::CommentCreateParams::CommentRecordType]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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
