# typed: strong

module Telnyx
  module Models
    module Dir
      class CommentListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Dir::CommentListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Comment categorisation. Customers post `customer_inquiry`. The Telnyx team posts
        # `vetting_comment`, `rejection_reason`, `notification`, `status_update`, or
        # `admin_response`. `internal_note` is filtered out of customer-visible responses.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::Dir::CommentListResponse::CommentType::TaggedSymbol
            )
          )
        end
        attr_reader :comment_type

        sig do
          params(
            comment_type:
              Telnyx::Models::Dir::CommentListResponse::CommentType::OrSymbol
          ).void
        end
        attr_writer :comment_type

        sig { returns(T.nilable(String)) }
        attr_reader :content

        sig { params(content: String).void }
        attr_writer :content

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Display name of the author. May be `null`.
        sig { returns(T.nilable(String)) }
        attr_accessor :author_name

        # Who wrote the comment. `admin` covers the Telnyx vetting team.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::Dir::CommentListResponse::AuthorRole::TaggedSymbol
            )
          )
        end
        attr_reader :author_role

        sig do
          params(
            author_role:
              Telnyx::Models::Dir::CommentListResponse::AuthorRole::OrSymbol
          ).void
        end
        attr_writer :author_role

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Resource the comment is attached to. Always `dir` on this endpoint.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::Dir::CommentListResponse::EntityType::TaggedSymbol
            )
          )
        end
        attr_reader :entity_type

        sig do
          params(
            entity_type:
              Telnyx::Models::Dir::CommentListResponse::EntityType::OrSymbol
          ).void
        end
        attr_writer :entity_type

        # Always `customer` on this endpoint — internal-only comments are filtered out.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::Dir::CommentListResponse::Visibility::TaggedSymbol
            )
          )
        end
        attr_reader :visibility

        sig do
          params(
            visibility:
              Telnyx::Models::Dir::CommentListResponse::Visibility::OrSymbol
          ).void
        end
        attr_writer :visibility

        sig do
          params(
            id: String,
            author_name: T.nilable(String),
            author_role:
              Telnyx::Models::Dir::CommentListResponse::AuthorRole::OrSymbol,
            comment_type:
              Telnyx::Models::Dir::CommentListResponse::CommentType::OrSymbol,
            content: String,
            created_at: Time,
            entity_type:
              Telnyx::Models::Dir::CommentListResponse::EntityType::OrSymbol,
            visibility:
              Telnyx::Models::Dir::CommentListResponse::Visibility::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          # Display name of the author. May be `null`.
          author_name: nil,
          # Who wrote the comment. `admin` covers the Telnyx vetting team.
          author_role: nil,
          # Comment categorisation. Customers post `customer_inquiry`. The Telnyx team posts
          # `vetting_comment`, `rejection_reason`, `notification`, `status_update`, or
          # `admin_response`. `internal_note` is filtered out of customer-visible responses.
          comment_type: nil,
          content: nil,
          created_at: nil,
          # Resource the comment is attached to. Always `dir` on this endpoint.
          entity_type: nil,
          # Always `customer` on this endpoint — internal-only comments are filtered out.
          visibility: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              author_name: T.nilable(String),
              author_role:
                Telnyx::Models::Dir::CommentListResponse::AuthorRole::TaggedSymbol,
              comment_type:
                Telnyx::Models::Dir::CommentListResponse::CommentType::TaggedSymbol,
              content: String,
              created_at: Time,
              entity_type:
                Telnyx::Models::Dir::CommentListResponse::EntityType::TaggedSymbol,
              visibility:
                Telnyx::Models::Dir::CommentListResponse::Visibility::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Who wrote the comment. `admin` covers the Telnyx vetting team.
        module AuthorRole
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::Dir::CommentListResponse::AuthorRole
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER =
            T.let(
              :customer,
              Telnyx::Models::Dir::CommentListResponse::AuthorRole::TaggedSymbol
            )
          ADMIN =
            T.let(
              :admin,
              Telnyx::Models::Dir::CommentListResponse::AuthorRole::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Dir::CommentListResponse::AuthorRole::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Comment categorisation. Customers post `customer_inquiry`. The Telnyx team posts
        # `vetting_comment`, `rejection_reason`, `notification`, `status_update`, or
        # `admin_response`. `internal_note` is filtered out of customer-visible responses.
        module CommentType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::Dir::CommentListResponse::CommentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VETTING_COMMENT =
            T.let(
              :vetting_comment,
              Telnyx::Models::Dir::CommentListResponse::CommentType::TaggedSymbol
            )
          REJECTION_REASON =
            T.let(
              :rejection_reason,
              Telnyx::Models::Dir::CommentListResponse::CommentType::TaggedSymbol
            )
          INTERNAL_NOTE =
            T.let(
              :internal_note,
              Telnyx::Models::Dir::CommentListResponse::CommentType::TaggedSymbol
            )
          NOTIFICATION =
            T.let(
              :notification,
              Telnyx::Models::Dir::CommentListResponse::CommentType::TaggedSymbol
            )
          STATUS_UPDATE =
            T.let(
              :status_update,
              Telnyx::Models::Dir::CommentListResponse::CommentType::TaggedSymbol
            )
          CUSTOMER_INQUIRY =
            T.let(
              :customer_inquiry,
              Telnyx::Models::Dir::CommentListResponse::CommentType::TaggedSymbol
            )
          ADMIN_RESPONSE =
            T.let(
              :admin_response,
              Telnyx::Models::Dir::CommentListResponse::CommentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Dir::CommentListResponse::CommentType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Resource the comment is attached to. Always `dir` on this endpoint.
        module EntityType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::Dir::CommentListResponse::EntityType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DIR =
            T.let(
              :dir,
              Telnyx::Models::Dir::CommentListResponse::EntityType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Dir::CommentListResponse::EntityType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Always `customer` on this endpoint — internal-only comments are filtered out.
        module Visibility
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::Dir::CommentListResponse::Visibility
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER =
            T.let(
              :customer,
              Telnyx::Models::Dir::CommentListResponse::Visibility::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Dir::CommentListResponse::Visibility::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
