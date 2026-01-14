# typed: strong

module Telnyx
  module Models
    class AuditEventListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::AuditEventListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[created_before], filter[created_after]
      sig { returns(T.nilable(Telnyx::AuditEventListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::AuditEventListParams::Filter::OrHash).void }
      attr_writer :filter

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Set the order of the results by the creation date.
      sig { returns(T.nilable(Telnyx::AuditEventListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::AuditEventListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::AuditEventListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::AuditEventListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[created_before], filter[created_after]
        filter: nil,
        page_number: nil,
        page_size: nil,
        # Set the order of the results by the creation date.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::AuditEventListParams::Filter,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::AuditEventListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AuditEventListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter for audit events created after a specific date.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_after

        sig { params(created_after: Time).void }
        attr_writer :created_after

        # Filter for audit events created before a specific date.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_before

        sig { params(created_before: Time).void }
        attr_writer :created_before

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[created_before], filter[created_after]
        sig do
          params(created_after: Time, created_before: Time).returns(
            T.attached_class
          )
        end
        def self.new(
          # Filter for audit events created after a specific date.
          created_after: nil,
          # Filter for audit events created before a specific date.
          created_before: nil
        )
        end

        sig { override.returns({ created_after: Time, created_before: Time }) }
        def to_hash
        end
      end

      # Set the order of the results by the creation date.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::AuditEventListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, Telnyx::AuditEventListParams::Sort::TaggedSymbol)
        DESC = T.let(:desc, Telnyx::AuditEventListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::AuditEventListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
