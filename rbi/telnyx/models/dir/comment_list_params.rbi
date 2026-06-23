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
        sig { returns(T.nilable(Telnyx::Dir::CommentType::OrSymbol)) }
        attr_reader :comment_type

        sig { params(comment_type: Telnyx::Dir::CommentType::OrSymbol).void }
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
            comment_type: Telnyx::Dir::CommentType::OrSymbol,
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
              comment_type: Telnyx::Dir::CommentType::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
