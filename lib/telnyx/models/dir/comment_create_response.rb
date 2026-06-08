# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::Comments#create
      class CommentCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Dir::CommentCreateResponse::Data]
        required :data, -> { Telnyx::Models::Dir::CommentCreateResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::Dir::CommentCreateResponse::Data]

        # @see Telnyx::Models::Dir::CommentCreateResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute comment_type
          #   Comment categorisation. Customers post `customer_inquiry`. The Telnyx team posts
          #   `vetting_comment`, `rejection_reason`, `notification`, `status_update`, or
          #   `admin_response`. `internal_note` is filtered out of customer-visible responses.
          #
          #   @return [Symbol, Telnyx::Models::Dir::CommentCreateResponse::Data::CommentType, nil]
          optional :comment_type, enum: -> { Telnyx::Models::Dir::CommentCreateResponse::Data::CommentType }

          # @!attribute content
          #
          #   @return [String, nil]
          optional :content, String

          response_only do
            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute author_name
            #   Display name of the author. May be `null`.
            #
            #   @return [String, nil]
            optional :author_name, String, nil?: true

            # @!attribute author_role
            #   Who wrote the comment. `admin` covers the Telnyx vetting team.
            #
            #   @return [Symbol, Telnyx::Models::Dir::CommentCreateResponse::Data::AuthorRole, nil]
            optional :author_role, enum: -> { Telnyx::Models::Dir::CommentCreateResponse::Data::AuthorRole }

            # @!attribute created_at
            #
            #   @return [Time, nil]
            optional :created_at, Time

            # @!attribute entity_type
            #   Resource the comment is attached to. Always `dir` on this endpoint.
            #
            #   @return [Symbol, Telnyx::Models::Dir::CommentCreateResponse::Data::EntityType, nil]
            optional :entity_type, enum: -> { Telnyx::Models::Dir::CommentCreateResponse::Data::EntityType }

            # @!attribute visibility
            #   Always `customer` on this endpoint - internal-only comments are filtered out.
            #
            #   @return [Symbol, Telnyx::Models::Dir::CommentCreateResponse::Data::Visibility, nil]
            optional :visibility, enum: -> { Telnyx::Models::Dir::CommentCreateResponse::Data::Visibility }
          end

          # @!method initialize(id: nil, author_name: nil, author_role: nil, comment_type: nil, content: nil, created_at: nil, entity_type: nil, visibility: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Dir::CommentCreateResponse::Data} for more details.
          #
          #   @param id [String]
          #
          #   @param author_name [String, nil] Display name of the author. May be `null`.
          #
          #   @param author_role [Symbol, Telnyx::Models::Dir::CommentCreateResponse::Data::AuthorRole] Who wrote the comment. `admin` covers the Telnyx vetting team.
          #
          #   @param comment_type [Symbol, Telnyx::Models::Dir::CommentCreateResponse::Data::CommentType] Comment categorisation. Customers post `customer_inquiry`. The Telnyx team posts
          #
          #   @param content [String]
          #
          #   @param created_at [Time]
          #
          #   @param entity_type [Symbol, Telnyx::Models::Dir::CommentCreateResponse::Data::EntityType] Resource the comment is attached to. Always `dir` on this endpoint.
          #
          #   @param visibility [Symbol, Telnyx::Models::Dir::CommentCreateResponse::Data::Visibility] Always `customer` on this endpoint - internal-only comments are filtered out.

          # Who wrote the comment. `admin` covers the Telnyx vetting team.
          #
          # @see Telnyx::Models::Dir::CommentCreateResponse::Data#author_role
          module AuthorRole
            extend Telnyx::Internal::Type::Enum

            CUSTOMER = :customer
            ADMIN = :admin

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Comment categorisation. Customers post `customer_inquiry`. The Telnyx team posts
          # `vetting_comment`, `rejection_reason`, `notification`, `status_update`, or
          # `admin_response`. `internal_note` is filtered out of customer-visible responses.
          #
          # @see Telnyx::Models::Dir::CommentCreateResponse::Data#comment_type
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

          # Resource the comment is attached to. Always `dir` on this endpoint.
          #
          # @see Telnyx::Models::Dir::CommentCreateResponse::Data#entity_type
          module EntityType
            extend Telnyx::Internal::Type::Enum

            DIR = :dir

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Always `customer` on this endpoint - internal-only comments are filtered out.
          #
          # @see Telnyx::Models::Dir::CommentCreateResponse::Data#visibility
          module Visibility
            extend Telnyx::Internal::Type::Enum

            CUSTOMER = :customer

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
