# typed: strong

module Telnyx
  module Models
    class PortingOrderUserFeedback < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrderUserFeedback, Telnyx::Internal::AnyHash)
        end

      # A comment related to the customer rating.
      sig { returns(T.nilable(String)) }
      attr_reader :user_comment

      sig { params(user_comment: String).void }
      attr_writer :user_comment

      # Once an order is ported, cancellation is requested or the request is cancelled,
      # the user may rate their experience
      sig { returns(T.nilable(Integer)) }
      attr_reader :user_rating

      sig { params(user_rating: Integer).void }
      attr_writer :user_rating

      sig do
        params(user_comment: String, user_rating: Integer).returns(
          T.attached_class
        )
      end
      def self.new(
        # A comment related to the customer rating.
        user_comment: nil,
        # Once an order is ported, cancellation is requested or the request is cancelled,
        # the user may rate their experience
        user_rating: nil
      )
      end

      sig { override.returns({ user_comment: String, user_rating: Integer }) }
      def to_hash
      end
    end
  end
end
