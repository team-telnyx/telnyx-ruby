# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::Comments#list
      class DirComment < Telnyx::Internal::Type::BaseModel
        # @!attribute comment_type
        #   Comment categorisation. Customers post `customer_inquiry`. The Telnyx team posts
        #   `vetting_comment`, `rejection_reason`, `notification`, `status_update`, or
        #   `admin_response`. `internal_note` is filtered out of customer-visible responses.
        #
        #   @return [Symbol, Telnyx::Models::Dir::CommentType, nil]
        optional :comment_type, enum: -> { Telnyx::Dir::CommentType }

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
          #   @return [Symbol, Telnyx::Models::Dir::DirComment::AuthorRole, nil]
          optional :author_role, enum: -> { Telnyx::Dir::DirComment::AuthorRole }

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute entity_type
          #   Resource the comment is attached to. Always `dir` on this endpoint.
          #
          #   @return [Symbol, Telnyx::Models::Dir::DirComment::EntityType, nil]
          optional :entity_type, enum: -> { Telnyx::Dir::DirComment::EntityType }

          # @!attribute visibility
          #   Always `customer` on this endpoint - internal-only comments are filtered out.
          #
          #   @return [Symbol, Telnyx::Models::Dir::DirComment::Visibility, nil]
          optional :visibility, enum: -> { Telnyx::Dir::DirComment::Visibility }
        end

        # @!method initialize(id: nil, author_name: nil, author_role: nil, comment_type: nil, content: nil, created_at: nil, entity_type: nil, visibility: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::DirComment} for more details.
        #
        #   @param id [String]
        #
        #   @param author_name [String, nil] Display name of the author. May be `null`.
        #
        #   @param author_role [Symbol, Telnyx::Models::Dir::DirComment::AuthorRole] Who wrote the comment. `admin` covers the Telnyx vetting team.
        #
        #   @param comment_type [Symbol, Telnyx::Models::Dir::CommentType] Comment categorisation. Customers post `customer_inquiry`. The Telnyx team posts
        #
        #   @param content [String]
        #
        #   @param created_at [Time]
        #
        #   @param entity_type [Symbol, Telnyx::Models::Dir::DirComment::EntityType] Resource the comment is attached to. Always `dir` on this endpoint.
        #
        #   @param visibility [Symbol, Telnyx::Models::Dir::DirComment::Visibility] Always `customer` on this endpoint - internal-only comments are filtered out.

        # Who wrote the comment. `admin` covers the Telnyx vetting team.
        #
        # @see Telnyx::Models::Dir::DirComment#author_role
        module AuthorRole
          extend Telnyx::Internal::Type::Enum

          CUSTOMER = :customer
          ADMIN = :admin

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Resource the comment is attached to. Always `dir` on this endpoint.
        #
        # @see Telnyx::Models::Dir::DirComment#entity_type
        module EntityType
          extend Telnyx::Internal::Type::Enum

          DIR = :dir

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Always `customer` on this endpoint - internal-only comments are filtered out.
        #
        # @see Telnyx::Models::Dir::DirComment#visibility
        module Visibility
          extend Telnyx::Internal::Type::Enum

          CUSTOMER = :customer

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    DirComment = Dir::DirComment
  end
end
