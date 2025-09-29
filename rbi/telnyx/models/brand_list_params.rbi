# typed: strong

module Telnyx
  module Models
    class BrandListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::BrandListParams, Telnyx::Internal::AnyHash)
        end

      # Filter results by the Telnyx Brand id
      sig { returns(T.nilable(String)) }
      attr_reader :brand_id

      sig { params(brand_id: String).void }
      attr_writer :brand_id

      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { params(country: String).void }
      attr_writer :country

      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      sig { returns(T.nilable(String)) }
      attr_reader :entity_type

      sig { params(entity_type: String).void }
      attr_writer :entity_type

      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # number of records per page. maximum of 500
      sig { returns(T.nilable(Integer)) }
      attr_reader :records_per_page

      sig { params(records_per_page: Integer).void }
      attr_writer :records_per_page

      # Specifies the sort order for results. If not given, results are sorted by
      # createdAt in descending order.
      sig { returns(T.nilable(Telnyx::BrandListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::BrandListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig { returns(T.nilable(String)) }
      attr_reader :state

      sig { params(state: String).void }
      attr_writer :state

      # Filter results by the TCR Brand id
      sig { returns(T.nilable(String)) }
      attr_reader :tcr_brand_id

      sig { params(tcr_brand_id: String).void }
      attr_writer :tcr_brand_id

      sig do
        params(
          brand_id: String,
          country: String,
          display_name: String,
          entity_type: String,
          page: Integer,
          records_per_page: Integer,
          sort: Telnyx::BrandListParams::Sort::OrSymbol,
          state: String,
          tcr_brand_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter results by the Telnyx Brand id
        brand_id: nil,
        country: nil,
        display_name: nil,
        entity_type: nil,
        page: nil,
        # number of records per page. maximum of 500
        records_per_page: nil,
        # Specifies the sort order for results. If not given, results are sorted by
        # createdAt in descending order.
        sort: nil,
        state: nil,
        # Filter results by the TCR Brand id
        tcr_brand_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            brand_id: String,
            country: String,
            display_name: String,
            entity_type: String,
            page: Integer,
            records_per_page: Integer,
            sort: Telnyx::BrandListParams::Sort::OrSymbol,
            state: String,
            tcr_brand_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Specifies the sort order for results. If not given, results are sorted by
      # createdAt in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::BrandListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASSIGNED_CAMPAIGNS_COUNT =
          T.let(
            :assignedCampaignsCount,
            Telnyx::BrandListParams::Sort::TaggedSymbol
          )
        ASSIGNED_CAMPAIGNS_COUNT_DESC =
          T.let(
            :"-assignedCampaignsCount",
            Telnyx::BrandListParams::Sort::TaggedSymbol
          )
        BRAND_ID = T.let(:brandId, Telnyx::BrandListParams::Sort::TaggedSymbol)
        BRAND_ID_DESC =
          T.let(:"-brandId", Telnyx::BrandListParams::Sort::TaggedSymbol)
        CREATED_AT =
          T.let(:createdAt, Telnyx::BrandListParams::Sort::TaggedSymbol)
        CREATED_AT_DESC =
          T.let(:"-createdAt", Telnyx::BrandListParams::Sort::TaggedSymbol)
        DISPLAY_NAME =
          T.let(:displayName, Telnyx::BrandListParams::Sort::TaggedSymbol)
        DISPLAY_NAME_DESC =
          T.let(:"-displayName", Telnyx::BrandListParams::Sort::TaggedSymbol)
        IDENTITY_STATUS =
          T.let(:identityStatus, Telnyx::BrandListParams::Sort::TaggedSymbol)
        IDENTITY_STATUS_DESC =
          T.let(:"-identityStatus", Telnyx::BrandListParams::Sort::TaggedSymbol)
        STATUS = T.let(:status, Telnyx::BrandListParams::Sort::TaggedSymbol)
        STATUS_DESC =
          T.let(:"-status", Telnyx::BrandListParams::Sort::TaggedSymbol)
        TCR_BRAND_ID =
          T.let(:tcrBrandId, Telnyx::BrandListParams::Sort::TaggedSymbol)
        TCR_BRAND_ID_DESC =
          T.let(:"-tcrBrandId", Telnyx::BrandListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::BrandListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
