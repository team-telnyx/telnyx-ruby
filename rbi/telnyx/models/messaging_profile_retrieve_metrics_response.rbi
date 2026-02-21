# typed: strong

module Telnyx
  module Models
    class MessagingProfileRetrieveMetricsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessagingProfileRetrieveMetricsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Detailed metrics for a messaging profile.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :data

      sig { params(data: T::Hash[Symbol, T.anything]).void }
      attr_writer :data

      sig do
        params(data: T::Hash[Symbol, T.anything]).returns(T.attached_class)
      end
      def self.new(
        # Detailed metrics for a messaging profile.
        data: nil
      )
      end

      sig { override.returns({ data: T::Hash[Symbol, T.anything] }) }
      def to_hash
      end
    end
  end
end
