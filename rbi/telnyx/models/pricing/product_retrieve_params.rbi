# typed: strong

module Telnyx
  module Models
    module Pricing
      class ProductRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Pricing::ProductRetrieveParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :slug

        # Two-letter ISO 3166-1 alpha-2 country code (uppercase, e.g. US) to filter
        # pricing to a single country.
        sig { returns(T.nilable(String)) }
        attr_accessor :filter_country_iso

        # Page number (1-based).
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # Number of items per page (max 100).
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            slug: String,
            filter_country_iso: T.nilable(String),
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          slug:,
          # Two-letter ISO 3166-1 alpha-2 country code (uppercase, e.g. US) to filter
          # pricing to a single country.
          filter_country_iso: nil,
          # Page number (1-based).
          page_number: nil,
          # Number of items per page (max 100).
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              slug: String,
              filter_country_iso: T.nilable(String),
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
