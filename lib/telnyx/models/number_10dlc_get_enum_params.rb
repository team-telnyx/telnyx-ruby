# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Number10dlc#get_enum
    class Number10dlcGetEnumParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      module Endpoint
        extend Telnyx::Internal::Type::Enum

        MNO = :mno
        OPTIONAL_ATTRIBUTES = :optionalAttributes
        USECASE = :usecase
        VERTICAL = :vertical
        ALT_BUSINESS_ID_TYPE = :altBusinessIdType
        BRAND_IDENTITY_STATUS = :brandIdentityStatus
        BRAND_RELATIONSHIP = :brandRelationship
        CAMPAIGN_STATUS = :campaignStatus
        ENTITY_TYPE = :entityType
        EXT_VETTING_PROVIDER = :extVettingProvider
        VETTING_STATUS = :vettingStatus
        BRAND_STATUS = :brandStatus
        OPERATION_STATUS = :operationStatus
        APPROVED_PUBLIC_COMPANY = :approvedPublicCompany
        STOCK_EXCHANGE = :stockExchange
        VETTING_CLASS = :vettingClass

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
