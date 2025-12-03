# typed: strong

module Telnyx
  module Models
    class EnumerationRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EnumerationRetrieveParams, Telnyx::Internal::AnyHash)
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
          T.type_alias do
            T.all(Symbol, Telnyx::EnumerationRetrieveParams::Endpoint)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MNO =
          T.let(:mno, Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol)
        OPTIONAL_ATTRIBUTES =
          T.let(
            :optionalAttributes,
            Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol
          )
        USECASE =
          T.let(
            :usecase,
            Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol
          )
        VERTICAL =
          T.let(
            :vertical,
            Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol
          )
        ALT_BUSINESS_ID_TYPE =
          T.let(
            :altBusinessIdType,
            Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol
          )
        BRAND_IDENTITY_STATUS =
          T.let(
            :brandIdentityStatus,
            Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol
          )
        BRAND_RELATIONSHIP =
          T.let(
            :brandRelationship,
            Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol
          )
        CAMPAIGN_STATUS =
          T.let(
            :campaignStatus,
            Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol
          )
        ENTITY_TYPE =
          T.let(
            :entityType,
            Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol
          )
        EXT_VETTING_PROVIDER =
          T.let(
            :extVettingProvider,
            Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol
          )
        VETTING_STATUS =
          T.let(
            :vettingStatus,
            Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol
          )
        BRAND_STATUS =
          T.let(
            :brandStatus,
            Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol
          )
        OPERATION_STATUS =
          T.let(
            :operationStatus,
            Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol
          )
        APPROVED_PUBLIC_COMPANY =
          T.let(
            :approvedPublicCompany,
            Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol
          )
        STOCK_EXCHANGE =
          T.let(
            :stockExchange,
            Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol
          )
        VETTING_CLASS =
          T.let(
            :vettingClass,
            Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::EnumerationRetrieveParams::Endpoint::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
