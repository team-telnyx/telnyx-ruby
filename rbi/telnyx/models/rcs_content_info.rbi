# typed: strong

module Telnyx
  module Models
    class RcsContentInfo < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::RcsContentInfo, Telnyx::Internal::AnyHash)
        end

      # Publicly reachable URL of the file.
      sig { returns(String) }
      attr_accessor :file_url

      # If set the URL content will not be cached.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :force_refresh

      sig { params(force_refresh: T::Boolean).void }
      attr_writer :force_refresh

      # Publicly reachable URL of the thumbnail. Maximum size of 100 kB.
      sig { returns(T.nilable(String)) }
      attr_reader :thumbnail_url

      sig { params(thumbnail_url: String).void }
      attr_writer :thumbnail_url

      sig do
        params(
          file_url: String,
          force_refresh: T::Boolean,
          thumbnail_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Publicly reachable URL of the file.
        file_url:,
        # If set the URL content will not be cached.
        force_refresh: nil,
        # Publicly reachable URL of the thumbnail. Maximum size of 100 kB.
        thumbnail_url: nil
      )
      end

      sig do
        override.returns(
          { file_url: String, force_refresh: T::Boolean, thumbnail_url: String }
        )
      end
      def to_hash
      end
    end
  end
end
