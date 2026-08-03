# typed: strong

module Telnyx
  module Models
    class EmailDomainListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailDomainListParams, Telnyx::Internal::AnyHash)
        end

      # Partial match on domain name (case-insensitive)
      sig { returns(T.nilable(String)) }
      attr_reader :filter_domain

      sig { params(filter_domain: String).void }
      attr_writer :filter_domain

      # Filter by profile UUID
      sig { returns(T.nilable(String)) }
      attr_reader :filter_profile_id

      sig { params(filter_profile_id: String).void }
      attr_writer :filter_profile_id

      sig { returns(T.nilable(Telnyx::EmailDomainStatus::OrSymbol)) }
      attr_reader :filter_status

      sig { params(filter_status: Telnyx::EmailDomainStatus::OrSymbol).void }
      attr_writer :filter_status

      sig { returns(T.nilable(Telnyx::EmailDomainType::OrSymbol)) }
      attr_reader :filter_type

      sig { params(filter_type: Telnyx::EmailDomainType::OrSymbol).void }
      attr_writer :filter_type

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :filter_usable_for_inbound

      sig { params(filter_usable_for_inbound: T::Boolean).void }
      attr_writer :filter_usable_for_inbound

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :filter_usable_for_sending

      sig { params(filter_usable_for_sending: T::Boolean).void }
      attr_writer :filter_usable_for_sending

      # Cursor for records after the provided value (cursor pagination)
      sig { returns(T.nilable(String)) }
      attr_reader :page_after

      sig { params(page_after: String).void }
      attr_writer :page_after

      # Cursor for records before the provided value (cursor pagination)
      sig { returns(T.nilable(String)) }
      attr_reader :page_before

      sig { params(page_before: String).void }
      attr_writer :page_before

      # Page number to return (offset pagination)
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Number of records per page
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Field to sort by. Prefix with `-` for descending order.
      sig { returns(T.nilable(Telnyx::EmailDomainListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::EmailDomainListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          filter_domain: String,
          filter_profile_id: String,
          filter_status: Telnyx::EmailDomainStatus::OrSymbol,
          filter_type: Telnyx::EmailDomainType::OrSymbol,
          filter_usable_for_inbound: T::Boolean,
          filter_usable_for_sending: T::Boolean,
          page_after: String,
          page_before: String,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::EmailDomainListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Partial match on domain name (case-insensitive)
        filter_domain: nil,
        # Filter by profile UUID
        filter_profile_id: nil,
        filter_status: nil,
        filter_type: nil,
        filter_usable_for_inbound: nil,
        filter_usable_for_sending: nil,
        # Cursor for records after the provided value (cursor pagination)
        page_after: nil,
        # Cursor for records before the provided value (cursor pagination)
        page_before: nil,
        # Page number to return (offset pagination)
        page_number: nil,
        # Number of records per page
        page_size: nil,
        # Field to sort by. Prefix with `-` for descending order.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter_domain: String,
            filter_profile_id: String,
            filter_status: Telnyx::EmailDomainStatus::OrSymbol,
            filter_type: Telnyx::EmailDomainType::OrSymbol,
            filter_usable_for_inbound: T::Boolean,
            filter_usable_for_sending: T::Boolean,
            page_after: String,
            page_before: String,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::EmailDomainListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Field to sort by. Prefix with `-` for descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailDomainListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, Telnyx::EmailDomainListParams::Sort::TaggedSymbol)
        CREATED_AT_DESC =
          T.let(
            :"-created_at",
            Telnyx::EmailDomainListParams::Sort::TaggedSymbol
          )
        DOMAIN =
          T.let(:domain, Telnyx::EmailDomainListParams::Sort::TaggedSymbol)
        MINUS_DOMAIN =
          T.let(:"-domain", Telnyx::EmailDomainListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::EmailDomainListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
