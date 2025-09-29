# typed: strong

module Telnyx
  module Models
    class PhoneNumberCampaignListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PhoneNumberCampaignListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[telnyx_campaign_id], filter[telnyx_brand_id], filter[tcr_campaign_id],
      # filter[tcr_brand_id]
      sig { returns(T.nilable(Telnyx::PhoneNumberCampaignListParams::Filter)) }
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::PhoneNumberCampaignListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      sig { returns(T.nilable(Integer)) }
      attr_reader :records_per_page

      sig { params(records_per_page: Integer).void }
      attr_writer :records_per_page

      # Specifies the sort order for results. If not given, results are sorted by
      # createdAt in descending order.
      sig do
        returns(
          T.nilable(Telnyx::PhoneNumberCampaignListParams::Sort::OrSymbol)
        )
      end
      attr_reader :sort

      sig do
        params(sort: Telnyx::PhoneNumberCampaignListParams::Sort::OrSymbol).void
      end
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::PhoneNumberCampaignListParams::Filter::OrHash,
          page: Integer,
          records_per_page: Integer,
          sort: Telnyx::PhoneNumberCampaignListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[telnyx_campaign_id], filter[telnyx_brand_id], filter[tcr_campaign_id],
        # filter[tcr_brand_id]
        filter: nil,
        page: nil,
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
            filter: Telnyx::PhoneNumberCampaignListParams::Filter,
            page: Integer,
            records_per_page: Integer,
            sort: Telnyx::PhoneNumberCampaignListParams::Sort::OrSymbol,
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
              Telnyx::PhoneNumberCampaignListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter results by the TCR Brand id
        sig { returns(T.nilable(String)) }
        attr_reader :tcr_brand_id

        sig { params(tcr_brand_id: String).void }
        attr_writer :tcr_brand_id

        # Filter results by the TCR Campaign id
        sig { returns(T.nilable(String)) }
        attr_reader :tcr_campaign_id

        sig { params(tcr_campaign_id: String).void }
        attr_writer :tcr_campaign_id

        # Filter results by the Telnyx Brand id
        sig { returns(T.nilable(String)) }
        attr_reader :telnyx_brand_id

        sig { params(telnyx_brand_id: String).void }
        attr_writer :telnyx_brand_id

        # Filter results by the Telnyx Campaign id
        sig { returns(T.nilable(String)) }
        attr_reader :telnyx_campaign_id

        sig { params(telnyx_campaign_id: String).void }
        attr_writer :telnyx_campaign_id

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[telnyx_campaign_id], filter[telnyx_brand_id], filter[tcr_campaign_id],
        # filter[tcr_brand_id]
        sig do
          params(
            tcr_brand_id: String,
            tcr_campaign_id: String,
            telnyx_brand_id: String,
            telnyx_campaign_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter results by the TCR Brand id
          tcr_brand_id: nil,
          # Filter results by the TCR Campaign id
          tcr_campaign_id: nil,
          # Filter results by the Telnyx Brand id
          telnyx_brand_id: nil,
          # Filter results by the Telnyx Campaign id
          telnyx_campaign_id: nil
        )
        end

        sig do
          override.returns(
            {
              tcr_brand_id: String,
              tcr_campaign_id: String,
              telnyx_brand_id: String,
              telnyx_campaign_id: String
            }
          )
        end
        def to_hash
        end
      end

      # Specifies the sort order for results. If not given, results are sorted by
      # createdAt in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PhoneNumberCampaignListParams::Sort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASSIGNMENT_STATUS =
          T.let(
            :assignmentStatus,
            Telnyx::PhoneNumberCampaignListParams::Sort::TaggedSymbol
          )
        ASSIGNMENT_STATUS_DESC =
          T.let(
            :"-assignmentStatus",
            Telnyx::PhoneNumberCampaignListParams::Sort::TaggedSymbol
          )
        CREATED_AT =
          T.let(
            :createdAt,
            Telnyx::PhoneNumberCampaignListParams::Sort::TaggedSymbol
          )
        CREATED_AT_DESC =
          T.let(
            :"-createdAt",
            Telnyx::PhoneNumberCampaignListParams::Sort::TaggedSymbol
          )
        PHONE_NUMBER =
          T.let(
            :phoneNumber,
            Telnyx::PhoneNumberCampaignListParams::Sort::TaggedSymbol
          )
        PHONE_NUMBER_DESC =
          T.let(
            :"-phoneNumber",
            Telnyx::PhoneNumberCampaignListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PhoneNumberCampaignListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
