# typed: strong

module Telnyx
  module Models
    class CommentCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CommentCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Models::CommentCreateResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::Models::CommentCreateResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::CommentCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::Models::CommentCreateResponse::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Models::Comment
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::CommentCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end
    end
  end
end
