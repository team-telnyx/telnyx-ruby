# typed: strong

module Telnyx
  module Models
    class WebSearchResult < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::WebSearchResult, Telnyx::Internal::AnyHash)
        end

      # Short description or excerpt.
      sig { returns(String) }
      attr_accessor :description

      # Relevant text snippets from the page.
      sig { returns(T::Array[String]) }
      attr_accessor :snippets

      # Result title.
      sig { returns(String) }
      attr_accessor :title

      # Result URL.
      sig { returns(String) }
      attr_accessor :url

      # Favicon URL (if available).
      sig { returns(T.nilable(String)) }
      attr_reader :favicon_url

      sig { params(favicon_url: String).void }
      attr_writer :favicon_url

      # Thumbnail image URL (if available).
      sig { returns(T.nilable(String)) }
      attr_reader :thumbnail_url

      sig { params(thumbnail_url: String).void }
      attr_writer :thumbnail_url

      sig do
        params(
          description: String,
          snippets: T::Array[String],
          title: String,
          url: String,
          favicon_url: String,
          thumbnail_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Short description or excerpt.
        description:,
        # Relevant text snippets from the page.
        snippets:,
        # Result title.
        title:,
        # Result URL.
        url:,
        # Favicon URL (if available).
        favicon_url: nil,
        # Thumbnail image URL (if available).
        thumbnail_url: nil
      )
      end

      sig do
        override.returns(
          {
            description: String,
            snippets: T::Array[String],
            title: String,
            url: String,
            favicon_url: String,
            thumbnail_url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
