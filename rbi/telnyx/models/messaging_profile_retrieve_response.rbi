# typed: strong

module Telnyx
  module Models
    class MessagingProfileRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessagingProfileRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::MessagingMessagingProfile)) }
      attr_reader :data

      sig { params(data: Telnyx::MessagingMessagingProfile::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::MessagingMessagingProfile::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::MessagingMessagingProfile }) }
      def to_hash
      end
    end
  end
end
