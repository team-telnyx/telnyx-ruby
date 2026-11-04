# typed: strong

module Telnyx
  module Models
    class UserProfileListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::UserProfileListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # The authenticated user's profile.
      sig { returns(Telnyx::UserProfileAPI) }
      attr_reader :data

      sig { params(data: Telnyx::UserProfileAPI::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::UserProfileAPI::OrHash).returns(T.attached_class)
      end
      def self.new(
        # The authenticated user's profile.
        data:
      )
      end

      sig { override.returns({ data: Telnyx::UserProfileAPI }) }
      def to_hash
      end
    end
  end
end
