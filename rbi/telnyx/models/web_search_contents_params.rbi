# typed: strong

module Telnyx
  module Models
    class WebSearchContentsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::WebSearchContentsParams, Telnyx::Internal::AnyHash)
        end

      # List of URLs to retrieve content from (max 20 for public API).
      sig { returns(T::Array[String]) }
      attr_accessor :urls

      # Timeout for crawling each URL, in seconds (1-60).
      sig { returns(T.nilable(Integer)) }
      attr_reader :crawl_timeout

      sig { params(crawl_timeout: Integer).void }
      attr_writer :crawl_timeout

      # Content formats to return. If omitted, `html` and `metadata` are returned by
      # default. Retrieval is best-effort per URL: a format field appears only when that
      # content could be produced, and a freshly crawled page may also include `html`
      # even when not requested.
      sig do
        returns(
          T.nilable(T::Array[Telnyx::WebSearchContentsParams::Format::OrSymbol])
        )
      end
      attr_reader :formats

      sig do
        params(
          formats: T::Array[Telnyx::WebSearchContentsParams::Format::OrSymbol]
        ).void
      end
      attr_writer :formats

      # Maximum age of cached content in seconds. `null` means no limit.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_age

      sig do
        params(
          urls: T::Array[String],
          crawl_timeout: Integer,
          formats: T::Array[Telnyx::WebSearchContentsParams::Format::OrSymbol],
          max_age: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # List of URLs to retrieve content from (max 20 for public API).
        urls:,
        # Timeout for crawling each URL, in seconds (1-60).
        crawl_timeout: nil,
        # Content formats to return. If omitted, `html` and `metadata` are returned by
        # default. Retrieval is best-effort per URL: a format field appears only when that
        # content could be produced, and a freshly crawled page may also include `html`
        # even when not requested.
        formats: nil,
        # Maximum age of cached content in seconds. `null` means no limit.
        max_age: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            urls: T::Array[String],
            crawl_timeout: Integer,
            formats:
              T::Array[Telnyx::WebSearchContentsParams::Format::OrSymbol],
            max_age: T.nilable(Integer),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Format
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::WebSearchContentsParams::Format)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HTML =
          T.let(:html, Telnyx::WebSearchContentsParams::Format::TaggedSymbol)
        MARKDOWN =
          T.let(
            :markdown,
            Telnyx::WebSearchContentsParams::Format::TaggedSymbol
          )
        METADATA =
          T.let(
            :metadata,
            Telnyx::WebSearchContentsParams::Format::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::WebSearchContentsParams::Format::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
