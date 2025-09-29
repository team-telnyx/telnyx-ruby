# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::Comments#list
      class CommentListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Portouts::CommentListResponse::Data>, nil]
        optional :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Portouts::CommentListResponse::Data] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::Metadata, nil]
        optional :meta, -> { Telnyx::Metadata }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::Portouts::CommentListResponse::Data>]
        #   @param meta [Telnyx::Models::Metadata]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute body
          #   Comment body
          #
          #   @return [String]
          required :body, String

          # @!attribute created_at
          #   Comment creation timestamp in ISO 8601 format
          #
          #   @return [String]
          required :created_at, String

          # @!attribute user_id
          #   Identifies the user who created the comment. Will be null if created by Telnyx
          #   Admin
          #
          #   @return [String]
          required :user_id, String

          # @!attribute portout_id
          #   Identifies the associated port request
          #
          #   @return [String, nil]
          optional :portout_id, String

          response_only do
            # @!attribute record_type
            #   Identifies the type of the resource.
            #
            #   @return [String, nil]
            optional :record_type, String
          end

          # @!method initialize(id:, body:, created_at:, user_id:, portout_id: nil, record_type: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Portouts::CommentListResponse::Data} for more details.
          #
          #   @param id [String]
          #
          #   @param body [String] Comment body
          #
          #   @param created_at [String] Comment creation timestamp in ISO 8601 format
          #
          #   @param user_id [String] Identifies the user who created the comment. Will be null if created by Telnyx A
          #
          #   @param portout_id [String] Identifies the associated port request
          #
          #   @param record_type [String] Identifies the type of the resource.
        end
      end
    end
  end
end
