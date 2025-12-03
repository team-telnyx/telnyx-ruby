# typed: strong

module Telnyx
  module Models
    class EnumRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EnumRetrieveParams, Telnyx::Internal::AnyHash)
        end

      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Telnyx::RequestOptions }) }
      def to_hash
      end

      module Endpoint
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EnumRetrieveParams::Endpoint) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MNO = T.let(:mno, Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol)
        OPTIONAL_ATTRIBUTES =
          T.let(
            :optionalAttributes,
            Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol
          )
        USECASE =
          T.let(:usecase, Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol)
        VERTICAL =
          T.let(:vertical, Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol)
        ALT_BUSINESS_ID_TYPE =
          T.let(
            :altBusinessIdType,
            Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol
          )
        BRAND_IDENTITY_STATUS =
          T.let(
            :brandIdentityStatus,
            Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol
          )
        BRAND_RELATIONSHIP =
          T.let(
            :brandRelationship,
            Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol
          )
        CAMPAIGN_STATUS =
          T.let(
            :campaignStatus,
            Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol
          )
        ENTITY_TYPE =
          T.let(:entityType, Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol)
        EXT_VETTING_PROVIDER =
          T.let(
            :extVettingProvider,
            Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol
          )
        VETTING_STATUS =
          T.let(
            :vettingStatus,
            Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol
          )
        BRAND_STATUS =
          T.let(
            :brandStatus,
            Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol
          )
        OPERATION_STATUS =
          T.let(
            :operationStatus,
            Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol
          )
        APPROVED_PUBLIC_COMPANY =
          T.let(
            :approvedPublicCompany,
            Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol
          )
        STOCK_EXCHANGE =
          T.let(
            :stockExchange,
            Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol
          )
        VETTING_CLASS =
          T.let(
            :vettingClass,
            Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::EnumRetrieveParams::Endpoint::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
