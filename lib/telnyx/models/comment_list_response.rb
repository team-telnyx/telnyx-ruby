# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Comments#list
    class CommentListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::CommentListResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::CommentListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::CommentListResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]

      class Data < Telnyx::Internal::Type::BaseModel
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
        #   @return [Symbol, Telnyx::Models::CommentListResponse::Data::CommentRecordType, nil]
        optional :comment_record_type, enum: -> { Telnyx::Models::CommentListResponse::Data::CommentRecordType }

        response_only do
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute commenter
          #
          #   @return [String, nil]
          optional :commenter, String

          # @!attribute commenter_type
          #
          #   @return [Symbol, Telnyx::Models::CommentListResponse::Data::CommenterType, nil]
          optional :commenter_type, enum: -> { Telnyx::Models::CommentListResponse::Data::CommenterType }

          # @!attribute created_at
          #   An ISO 8901 datetime string denoting when the comment was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute read_at
          #   An ISO 8901 datetime string for when the comment was read.
          #
          #   @return [Time, nil]
          optional :read_at, Time

          # @!attribute updated_at
          #   An ISO 8901 datetime string for when the comment was updated.
          #
          #   @return [Time, nil]
          optional :updated_at, Time
        end

        # @!method initialize(id: nil, body: nil, comment_record_id: nil, comment_record_type: nil, commenter: nil, commenter_type: nil, created_at: nil, read_at: nil, updated_at: nil)
        #   @param id [String]
        #
        #   @param body [String]
        #
        #   @param comment_record_id [String]
        #
        #   @param comment_record_type [Symbol, Telnyx::Models::CommentListResponse::Data::CommentRecordType]
        #
        #   @param commenter [String]
        #
        #   @param commenter_type [Symbol, Telnyx::Models::CommentListResponse::Data::CommenterType]
        #
        #   @param created_at [Time] An ISO 8901 datetime string denoting when the comment was created.
        #
        #   @param read_at [Time] An ISO 8901 datetime string for when the comment was read.
        #
        #   @param updated_at [Time] An ISO 8901 datetime string for when the comment was updated.

        # @see Telnyx::Models::CommentListResponse::Data#comment_record_type
        module CommentRecordType
          extend Telnyx::Internal::Type::Enum

          SUB_NUMBER_ORDER = :sub_number_order
          REQUIREMENT_GROUP = :requirement_group

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CommentListResponse::Data#commenter_type
        module CommenterType
          extend Telnyx::Internal::Type::Enum

          ADMIN = :admin
          USER = :user

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
