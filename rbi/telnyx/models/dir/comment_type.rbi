# typed: strong

module Telnyx
  module Models
    module Dir
      # Comment categorisation. Customers post `customer_inquiry`. The Telnyx team posts
      # `vetting_comment`, `rejection_reason`, `notification`, `status_update`, or
      # `admin_response`. `internal_note` is filtered out of customer-visible responses.
      module CommentType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::Dir::CommentType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VETTING_COMMENT =
          T.let(:vetting_comment, Telnyx::Dir::CommentType::TaggedSymbol)
        REJECTION_REASON =
          T.let(:rejection_reason, Telnyx::Dir::CommentType::TaggedSymbol)
        INTERNAL_NOTE =
          T.let(:internal_note, Telnyx::Dir::CommentType::TaggedSymbol)
        NOTIFICATION =
          T.let(:notification, Telnyx::Dir::CommentType::TaggedSymbol)
        STATUS_UPDATE =
          T.let(:status_update, Telnyx::Dir::CommentType::TaggedSymbol)
        CUSTOMER_INQUIRY =
          T.let(:customer_inquiry, Telnyx::Dir::CommentType::TaggedSymbol)
        ADMIN_RESPONSE =
          T.let(:admin_response, Telnyx::Dir::CommentType::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::Dir::CommentType::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
