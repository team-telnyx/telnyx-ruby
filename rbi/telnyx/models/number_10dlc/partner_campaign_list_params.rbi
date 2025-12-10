# typed: strong

module Telnyx
  module Models
    module Number10dlc
      class PartnerCampaignListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Number10dlc::PartnerCampaignListParams,
              Telnyx::Internal::AnyHash
            )
          end

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
        sig do
          returns(
            T.nilable(
              Telnyx::Number10dlc::PartnerCampaignListParams::Sort::OrSymbol
            )
          )
        end
        attr_reader :sort

        sig do
          params(
            sort: Telnyx::Number10dlc::PartnerCampaignListParams::Sort::OrSymbol
          ).void
        end
        attr_writer :sort

        sig do
          params(
            page: Integer,
            records_per_page: Integer,
            sort:
              Telnyx::Number10dlc::PartnerCampaignListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
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
              page: Integer,
              records_per_page: Integer,
              sort:
                Telnyx::Number10dlc::PartnerCampaignListParams::Sort::OrSymbol,
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
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Number10dlc::PartnerCampaignListParams::Sort
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASSIGNED_PHONE_NUMBERS_COUNT =
            T.let(
              :assignedPhoneNumbersCount,
              Telnyx::Number10dlc::PartnerCampaignListParams::Sort::TaggedSymbol
            )
          ASSIGNED_PHONE_NUMBERS_COUNT_DESC =
            T.let(
              :"-assignedPhoneNumbersCount",
              Telnyx::Number10dlc::PartnerCampaignListParams::Sort::TaggedSymbol
            )
          BRAND_DISPLAY_NAME =
            T.let(
              :brandDisplayName,
              Telnyx::Number10dlc::PartnerCampaignListParams::Sort::TaggedSymbol
            )
          BRAND_DISPLAY_NAME_DESC =
            T.let(
              :"-brandDisplayName",
              Telnyx::Number10dlc::PartnerCampaignListParams::Sort::TaggedSymbol
            )
          TCR_BRAND_ID =
            T.let(
              :tcrBrandId,
              Telnyx::Number10dlc::PartnerCampaignListParams::Sort::TaggedSymbol
            )
          TCR_BRAN_ID_DESC =
            T.let(
              :"-tcrBranId",
              Telnyx::Number10dlc::PartnerCampaignListParams::Sort::TaggedSymbol
            )
          TCR_CAMPAIGN_ID =
            T.let(
              :tcrCampaignId,
              Telnyx::Number10dlc::PartnerCampaignListParams::Sort::TaggedSymbol
            )
          TCR_CAMPAIGN_ID_DESC =
            T.let(
              :"-tcrCampaignId",
              Telnyx::Number10dlc::PartnerCampaignListParams::Sort::TaggedSymbol
            )
          CREATED_AT =
            T.let(
              :createdAt,
              Telnyx::Number10dlc::PartnerCampaignListParams::Sort::TaggedSymbol
            )
          CREATED_AT_DESC =
            T.let(
              :"-createdAt",
              Telnyx::Number10dlc::PartnerCampaignListParams::Sort::TaggedSymbol
            )
          CAMPAIGN_STATUS =
            T.let(
              :campaignStatus,
              Telnyx::Number10dlc::PartnerCampaignListParams::Sort::TaggedSymbol
            )
          CAMPAIGN_STATUS_DESC =
            T.let(
              :"-campaignStatus",
              Telnyx::Number10dlc::PartnerCampaignListParams::Sort::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Number10dlc::PartnerCampaignListParams::Sort::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
