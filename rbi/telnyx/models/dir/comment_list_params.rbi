# typed: strong

module Telnyx
  module Models
    module Dir
      class CommentListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Dir::CommentListParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :dir_id

        # Restrict to comments of this category. Customer-visible categories only:
        # internal-only comments are filtered out regardless of this filter.
        sig do
          returns(
            T.nilable(Telnyx::Dir::CommentListParams::CommentType::OrSymbol)
          )
        end
        attr_reader :comment_type

        sig do
          params(
            comment_type: Telnyx::Dir::CommentListParams::CommentType::OrSymbol
          ).void
        end
        attr_writer :comment_type

        # 1-based page number. Out-of-range values return an empty page with correct meta.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # Items per page. Maximum 250; values above are clamped to 250.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            dir_id: String,
            comment_type: Telnyx::Dir::CommentListParams::CommentType::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          dir_id:,
          # Restrict to comments of this category. Customer-visible categories only:
          # internal-only comments are filtered out regardless of this filter.
          comment_type: nil,
          # 1-based page number. Out-of-range values return an empty page with correct meta.
          page_number: nil,
          # Items per page. Maximum 250; values above are clamped to 250.
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              dir_id: String,
              comment_type:
                Telnyx::Dir::CommentListParams::CommentType::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Restrict to comments of this category. Customer-visible categories only:
        # internal-only comments are filtered out regardless of this filter.
        module CommentType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Dir::CommentListParams::CommentType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VETTING_COMMENT =
            T.let(
              :vetting_comment,
              Telnyx::Dir::CommentListParams::CommentType::TaggedSymbol
            )
          REJECTION_REASON =
            T.let(
              :rejection_reason,
              Telnyx::Dir::CommentListParams::CommentType::TaggedSymbol
            )
          INTERNAL_NOTE =
            T.let(
              :internal_note,
              Telnyx::Dir::CommentListParams::CommentType::TaggedSymbol
            )
          NOTIFICATION =
            T.let(
              :notification,
              Telnyx::Dir::CommentListParams::CommentType::TaggedSymbol
            )
          STATUS_UPDATE =
            T.let(
              :status_update,
              Telnyx::Dir::CommentListParams::CommentType::TaggedSymbol
            )
          CUSTOMER_INQUIRY =
            T.let(
              :customer_inquiry,
              Telnyx::Dir::CommentListParams::CommentType::TaggedSymbol
            )
          ADMIN_RESPONSE =
            T.let(
              :admin_response,
              Telnyx::Dir::CommentListParams::CommentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Dir::CommentListParams::CommentType::TaggedSymbol
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
