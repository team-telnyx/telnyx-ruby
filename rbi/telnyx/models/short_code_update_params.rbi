# typed: strong

module Telnyx
  module Models
    class ShortCodeUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::ShortCodeUpdateParams, Telnyx::Internal::AnyHash)
        end

      # Unique identifier for a messaging profile.
      sig { returns(String) }
      attr_accessor :messaging_profile_id

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      sig do
        params(
          messaging_profile_id: String,
          tags: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for a messaging profile.
        messaging_profile_id:,
        tags: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            messaging_profile_id: String,
            tags: T::Array[String],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
