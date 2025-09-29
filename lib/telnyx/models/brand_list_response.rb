# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Brand#list
    class BrandListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute page
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute records
      #
      #   @return [Array<Telnyx::Models::BrandListResponse::Record>, nil]
      optional :records, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::BrandListResponse::Record] }

      # @!attribute total_records
      #
      #   @return [Integer, nil]
      optional :total_records, Integer, api_name: :totalRecords

      # @!method initialize(page: nil, records: nil, total_records: nil)
      #   @param page [Integer]
      #   @param records [Array<Telnyx::Models::BrandListResponse::Record>]
      #   @param total_records [Integer]

      class Record < Telnyx::Internal::Type::BaseModel
        # @!attribute assigned_campaings_count
        #   Number of campaigns associated with the brand
        #
        #   @return [Integer, nil]
        optional :assigned_campaings_count, Integer, api_name: :assignedCampaingsCount

        # @!attribute brand_id
        #   Unique identifier assigned to the brand.
        #
        #   @return [String, nil]
        optional :brand_id, String, api_name: :brandId

        # @!attribute company_name
        #   (Required for Non-profit/private/public) Legal company name.
        #
        #   @return [String, nil]
        optional :company_name, String, api_name: :companyName

        # @!attribute created_at
        #   Date and time that the brand was created at.
        #
        #   @return [String, nil]
        optional :created_at, String, api_name: :createdAt

        # @!attribute display_name
        #   Display or marketing name of the brand.
        #
        #   @return [String, nil]
        optional :display_name, String, api_name: :displayName

        # @!attribute email
        #   Valid email address of brand support contact.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute entity_type
        #   Entity type behind the brand. This is the form of business establishment.
        #
        #   @return [Symbol, Telnyx::Models::EntityType, nil]
        optional :entity_type, enum: -> { Telnyx::EntityType }, api_name: :entityType

        # @!attribute failure_reasons
        #   Failure reasons for brand
        #
        #   @return [String, nil]
        optional :failure_reasons, String, api_name: :failureReasons

        # @!attribute identity_status
        #   The verification status of an active brand
        #
        #   @return [Symbol, Telnyx::Models::BrandIdentityStatus, nil]
        optional :identity_status, enum: -> { Telnyx::BrandIdentityStatus }, api_name: :identityStatus

        # @!attribute status
        #   Status of the brand
        #
        #   @return [Symbol, Telnyx::Models::BrandListResponse::Record::Status, nil]
        optional :status, enum: -> { Telnyx::Models::BrandListResponse::Record::Status }

        # @!attribute tcr_brand_id
        #   Unique identifier assigned to the brand by the registry.
        #
        #   @return [String, nil]
        optional :tcr_brand_id, String, api_name: :tcrBrandId

        # @!attribute updated_at
        #   Date and time that the brand was last updated at.
        #
        #   @return [String, nil]
        optional :updated_at, String, api_name: :updatedAt

        # @!attribute website
        #   Brand website URL.
        #
        #   @return [String, nil]
        optional :website, String

        # @!method initialize(assigned_campaings_count: nil, brand_id: nil, company_name: nil, created_at: nil, display_name: nil, email: nil, entity_type: nil, failure_reasons: nil, identity_status: nil, status: nil, tcr_brand_id: nil, updated_at: nil, website: nil)
        #   @param assigned_campaings_count [Integer] Number of campaigns associated with the brand
        #
        #   @param brand_id [String] Unique identifier assigned to the brand.
        #
        #   @param company_name [String] (Required for Non-profit/private/public) Legal company name.
        #
        #   @param created_at [String] Date and time that the brand was created at.
        #
        #   @param display_name [String] Display or marketing name of the brand.
        #
        #   @param email [String] Valid email address of brand support contact.
        #
        #   @param entity_type [Symbol, Telnyx::Models::EntityType] Entity type behind the brand. This is the form of business establishment.
        #
        #   @param failure_reasons [String] Failure reasons for brand
        #
        #   @param identity_status [Symbol, Telnyx::Models::BrandIdentityStatus] The verification status of an active brand
        #
        #   @param status [Symbol, Telnyx::Models::BrandListResponse::Record::Status] Status of the brand
        #
        #   @param tcr_brand_id [String] Unique identifier assigned to the brand by the registry.
        #
        #   @param updated_at [String] Date and time that the brand was last updated at.
        #
        #   @param website [String] Brand website URL.

        # Status of the brand
        #
        # @see Telnyx::Models::BrandListResponse::Record#status
        module Status
          extend Telnyx::Internal::Type::Enum

          OK = :OK
          REGISTRATION_PENDING = :REGISTRATION_PENDING
          REGISTRATION_FAILED = :REGISTRATION_FAILED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
