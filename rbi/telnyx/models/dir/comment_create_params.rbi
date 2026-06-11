# typed: strong

module Telnyx
  module Models
    module Dir
      class CommentCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Dir::CommentCreateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :dir_id

        # Comment body. 1–5000 characters.
        sig { returns(String) }
        attr_accessor :content

        # Optional parent comment id to thread this reply under.
        sig { returns(T.nilable(String)) }
        attr_reader :parent_comment_id

        sig { params(parent_comment_id: String).void }
        attr_writer :parent_comment_id

        sig do
          params(
            dir_id: String,
            content: String,
            parent_comment_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          dir_id:,
          # Comment body. 1–5000 characters.
          content:,
          # Optional parent comment id to thread this reply under.
          parent_comment_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              dir_id: String,
              content: String,
              parent_comment_id: String,
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
