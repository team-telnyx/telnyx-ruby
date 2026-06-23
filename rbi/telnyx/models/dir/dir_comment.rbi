# typed: strong

module Telnyx
  module Models
    DirComment = Dir::DirComment

    module Dir
      class DirComment < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Dir::DirComment, Telnyx::Internal::AnyHash)
          end

        # Comment categorisation. Customers post `customer_inquiry`. The Telnyx team posts
        # `vetting_comment`, `rejection_reason`, `notification`, `status_update`, or
        # `admin_response`. `internal_note` is filtered out of customer-visible responses.
        sig { returns(T.nilable(Telnyx::Dir::CommentType::TaggedSymbol)) }
        attr_reader :comment_type

        sig { params(comment_type: Telnyx::Dir::CommentType::OrSymbol).void }
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
          returns(T.nilable(Telnyx::Dir::DirComment::AuthorRole::TaggedSymbol))
        end
        attr_reader :author_role

        sig do
          params(
            author_role: Telnyx::Dir::DirComment::AuthorRole::OrSymbol
          ).void
        end
        attr_writer :author_role

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Resource the comment is attached to. Always `dir` on this endpoint.
        sig do
          returns(T.nilable(Telnyx::Dir::DirComment::EntityType::TaggedSymbol))
        end
        attr_reader :entity_type

        sig do
          params(
            entity_type: Telnyx::Dir::DirComment::EntityType::OrSymbol
          ).void
        end
        attr_writer :entity_type

        # Always `customer` on this endpoint - internal-only comments are filtered out.
        sig do
          returns(T.nilable(Telnyx::Dir::DirComment::Visibility::TaggedSymbol))
        end
        attr_reader :visibility

        sig do
          params(visibility: Telnyx::Dir::DirComment::Visibility::OrSymbol).void
        end
        attr_writer :visibility

        sig do
          params(
            id: String,
            author_name: T.nilable(String),
            author_role: Telnyx::Dir::DirComment::AuthorRole::OrSymbol,
            comment_type: Telnyx::Dir::CommentType::OrSymbol,
            content: String,
            created_at: Time,
            entity_type: Telnyx::Dir::DirComment::EntityType::OrSymbol,
            visibility: Telnyx::Dir::DirComment::Visibility::OrSymbol
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
          # Always `customer` on this endpoint - internal-only comments are filtered out.
          visibility: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              author_name: T.nilable(String),
              author_role: Telnyx::Dir::DirComment::AuthorRole::TaggedSymbol,
              comment_type: Telnyx::Dir::CommentType::TaggedSymbol,
              content: String,
              created_at: Time,
              entity_type: Telnyx::Dir::DirComment::EntityType::TaggedSymbol,
              visibility: Telnyx::Dir::DirComment::Visibility::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Who wrote the comment. `admin` covers the Telnyx vetting team.
        module AuthorRole
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::Dir::DirComment::AuthorRole) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER =
            T.let(:customer, Telnyx::Dir::DirComment::AuthorRole::TaggedSymbol)
          ADMIN =
            T.let(:admin, Telnyx::Dir::DirComment::AuthorRole::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::Dir::DirComment::AuthorRole::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Resource the comment is attached to. Always `dir` on this endpoint.
        module EntityType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::Dir::DirComment::EntityType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DIR = T.let(:dir, Telnyx::Dir::DirComment::EntityType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::Dir::DirComment::EntityType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Always `customer` on this endpoint - internal-only comments are filtered out.
        module Visibility
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::Dir::DirComment::Visibility) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER =
            T.let(:customer, Telnyx::Dir::DirComment::Visibility::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::Dir::DirComment::Visibility::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
