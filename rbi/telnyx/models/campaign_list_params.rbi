# typed: strong

module Telnyx
  module Models
    class CampaignListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::CampaignListParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :brand_id

      # The 1-indexed page number to get. The default value is `1`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # The amount of records per page, limited to between 1 and 500 inclusive. The
      # default value is `10`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :records_per_page

      sig { params(records_per_page: Integer).void }
      attr_writer :records_per_page

      # Specifies the sort order for results. If not given, results are sorted by
      # createdAt in descending order.
      sig { returns(T.nilable(Telnyx::CampaignListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::CampaignListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          brand_id: String,
          page: Integer,
          records_per_page: Integer,
          sort: Telnyx::CampaignListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        brand_id:,
        # The 1-indexed page number to get. The default value is `1`.
        page: nil,
        # The amount of records per page, limited to between 1 and 500 inclusive. The
        # default value is `10`.
        records_per_page: nil,
        # Specifies the sort order for results. If not given, results are sorted by
        # createdAt in descending order.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            brand_id: String,
            page: Integer,
            records_per_page: Integer,
            sort: Telnyx::CampaignListParams::Sort::OrSymbol,
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
          T.type_alias { T.all(Symbol, Telnyx::CampaignListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASSIGNED_PHONE_NUMBERS_COUNT =
          T.let(
            :assignedPhoneNumbersCount,
            Telnyx::CampaignListParams::Sort::TaggedSymbol
          )
        ASSIGNED_PHONE_NUMBERS_COUNT_DESC =
          T.let(
            :"-assignedPhoneNumbersCount",
            Telnyx::CampaignListParams::Sort::TaggedSymbol
          )
        CAMPAIGN_ID =
          T.let(:campaignId, Telnyx::CampaignListParams::Sort::TaggedSymbol)
        CAMPAIGN_ID_DESC =
          T.let(:"-campaignId", Telnyx::CampaignListParams::Sort::TaggedSymbol)
        CREATED_AT =
          T.let(:createdAt, Telnyx::CampaignListParams::Sort::TaggedSymbol)
        CREATED_AT_DESC =
          T.let(:"-createdAt", Telnyx::CampaignListParams::Sort::TaggedSymbol)
        STATUS = T.let(:status, Telnyx::CampaignListParams::Sort::TaggedSymbol)
        STATUS_DESC =
          T.let(:"-status", Telnyx::CampaignListParams::Sort::TaggedSymbol)
        TCR_CAMPAIGN_ID =
          T.let(:tcrCampaignId, Telnyx::CampaignListParams::Sort::TaggedSymbol)
        TCR_CAMPAIGN_ID_DESC =
          T.let(
            :"-tcrCampaignId",
            Telnyx::CampaignListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CampaignListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
