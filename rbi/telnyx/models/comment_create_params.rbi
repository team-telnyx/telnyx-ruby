# typed: strong

module Telnyx
  module Models
    class CommentCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::CommentCreateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :body

      sig { params(body: String).void }
      attr_writer :body

      sig { returns(T.nilable(String)) }
      attr_reader :comment_record_id

      sig { params(comment_record_id: String).void }
      attr_writer :comment_record_id

      sig do
        returns(
          T.nilable(Telnyx::CommentCreateParams::CommentRecordType::OrSymbol)
        )
      end
      attr_reader :comment_record_type

      sig do
        params(
          comment_record_type:
            Telnyx::CommentCreateParams::CommentRecordType::OrSymbol
        ).void
      end
      attr_writer :comment_record_type

      sig do
        params(
          body: String,
          comment_record_id: String,
          comment_record_type:
            Telnyx::CommentCreateParams::CommentRecordType::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        body: nil,
        comment_record_id: nil,
        comment_record_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            body: String,
            comment_record_id: String,
            comment_record_type:
              Telnyx::CommentCreateParams::CommentRecordType::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      module CommentRecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CommentCreateParams::CommentRecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUB_NUMBER_ORDER =
          T.let(
            :sub_number_order,
            Telnyx::CommentCreateParams::CommentRecordType::TaggedSymbol
          )
        REQUIREMENT_GROUP =
          T.let(
            :requirement_group,
            Telnyx::CommentCreateParams::CommentRecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CommentCreateParams::CommentRecordType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
