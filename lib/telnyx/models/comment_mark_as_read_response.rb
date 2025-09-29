# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Comments#mark_as_read
    class CommentMarkAsReadResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CommentMarkAsReadResponse::Data, nil]
      optional :data, -> { Telnyx::Models::CommentMarkAsReadResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CommentMarkAsReadResponse::Data]

      # @see Telnyx::Models::CommentMarkAsReadResponse#data
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
        #   @return [Symbol, Telnyx::Models::CommentMarkAsReadResponse::Data::CommentRecordType, nil]
        optional :comment_record_type,
                 enum: -> { Telnyx::Models::CommentMarkAsReadResponse::Data::CommentRecordType }

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
          #   @return [Symbol, Telnyx::Models::CommentMarkAsReadResponse::Data::CommenterType, nil]
          optional :commenter_type, enum: -> { Telnyx::Models::CommentMarkAsReadResponse::Data::CommenterType }

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
        #   @param comment_record_type [Symbol, Telnyx::Models::CommentMarkAsReadResponse::Data::CommentRecordType]
        #
        #   @param commenter [String]
        #
        #   @param commenter_type [Symbol, Telnyx::Models::CommentMarkAsReadResponse::Data::CommenterType]
        #
        #   @param created_at [Time] An ISO 8901 datetime string denoting when the comment was created.
        #
        #   @param read_at [Time] An ISO 8901 datetime string for when the comment was read.
        #
        #   @param updated_at [Time] An ISO 8901 datetime string for when the comment was updated.

        # @see Telnyx::Models::CommentMarkAsReadResponse::Data#comment_record_type
        module CommentRecordType
          extend Telnyx::Internal::Type::Enum

          SUB_NUMBER_ORDER = :sub_number_order
          REQUIREMENT_GROUP = :requirement_group

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CommentMarkAsReadResponse::Data#commenter_type
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
