# typed: strong

module Telnyx
  module Models
    class WebSearchCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::WebSearchCreateParams, Telnyx::Internal::AnyHash)
        end

      # The search query text.
      sig { returns(String) }
      attr_accessor :query

      # Number of results to return (1-100).
      sig { returns(T.nilable(Integer)) }
      attr_reader :count

      sig { params(count: Integer).void }
      attr_writer :count

      # Two-letter country code (ISO 3166-1 alpha-2) to bias results.
      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { params(country: String).void }
      attr_writer :country

      # Exclude results from these domains (bare hostnames, e.g. `pinterest.com`).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :exclude_domains

      sig { params(exclude_domains: T::Array[String]).void }
      attr_writer :exclude_domains

      # Time-based filter for results. Common values: `day`, `week`, `month`, `year`.
      sig { returns(T.nilable(String)) }
      attr_reader :freshness

      sig { params(freshness: String).void }
      attr_writer :freshness

      # Restrict results to these domains (bare hostnames, e.g. `arxiv.org`).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :include_domains

      sig { params(include_domains: T::Array[String]).void }
      attr_writer :include_domains

      # When true, the provider crawls pages in real-time for fresh content. The boolean
      # is translated to the provider's internal enum internally; callers always pass
      # `true` or `false`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :livecrawl

      sig { params(livecrawl: T::Boolean).void }
      attr_writer :livecrawl

      # Safe search filter level.
      sig do
        returns(T.nilable(Telnyx::WebSearchCreateParams::Safesearch::OrSymbol))
      end
      attr_reader :safesearch

      sig do
        params(
          safesearch: Telnyx::WebSearchCreateParams::Safesearch::OrSymbol
        ).void
      end
      attr_writer :safesearch

      sig do
        params(
          query: String,
          count: Integer,
          country: String,
          exclude_domains: T::Array[String],
          freshness: String,
          include_domains: T::Array[String],
          livecrawl: T::Boolean,
          safesearch: Telnyx::WebSearchCreateParams::Safesearch::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The search query text.
        query:,
        # Number of results to return (1-100).
        count: nil,
        # Two-letter country code (ISO 3166-1 alpha-2) to bias results.
        country: nil,
        # Exclude results from these domains (bare hostnames, e.g. `pinterest.com`).
        exclude_domains: nil,
        # Time-based filter for results. Common values: `day`, `week`, `month`, `year`.
        freshness: nil,
        # Restrict results to these domains (bare hostnames, e.g. `arxiv.org`).
        include_domains: nil,
        # When true, the provider crawls pages in real-time for fresh content. The boolean
        # is translated to the provider's internal enum internally; callers always pass
        # `true` or `false`.
        livecrawl: nil,
        # Safe search filter level.
        safesearch: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            query: String,
            count: Integer,
            country: String,
            exclude_domains: T::Array[String],
            freshness: String,
            include_domains: T::Array[String],
            livecrawl: T::Boolean,
            safesearch: Telnyx::WebSearchCreateParams::Safesearch::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Safe search filter level.
      module Safesearch
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::WebSearchCreateParams::Safesearch)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OFF =
          T.let(:off, Telnyx::WebSearchCreateParams::Safesearch::TaggedSymbol)
        MODERATE =
          T.let(
            :moderate,
            Telnyx::WebSearchCreateParams::Safesearch::TaggedSymbol
          )
        STRICT =
          T.let(
            :strict,
            Telnyx::WebSearchCreateParams::Safesearch::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::WebSearchCreateParams::Safesearch::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
