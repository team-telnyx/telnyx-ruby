# typed: strong

module Telnyx
  module Models
    class Number10dlcRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::Number10dlcRetrieveParams, Telnyx::Internal::AnyHash)
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
            T.all(Symbol, Telnyx::Number10dlcRetrieveParams::Endpoint)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MNO =
          T.let(:mno, Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol)
        OPTIONAL_ATTRIBUTES =
          T.let(
            :optionalAttributes,
            Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol
          )
        USECASE =
          T.let(
            :usecase,
            Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol
          )
        VERTICAL =
          T.let(
            :vertical,
            Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol
          )
        ALT_BUSINESS_ID_TYPE =
          T.let(
            :altBusinessIdType,
            Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol
          )
        BRAND_IDENTITY_STATUS =
          T.let(
            :brandIdentityStatus,
            Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol
          )
        BRAND_RELATIONSHIP =
          T.let(
            :brandRelationship,
            Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol
          )
        CAMPAIGN_STATUS =
          T.let(
            :campaignStatus,
            Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol
          )
        ENTITY_TYPE =
          T.let(
            :entityType,
            Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol
          )
        EXT_VETTING_PROVIDER =
          T.let(
            :extVettingProvider,
            Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol
          )
        VETTING_STATUS =
          T.let(
            :vettingStatus,
            Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol
          )
        BRAND_STATUS =
          T.let(
            :brandStatus,
            Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol
          )
        OPERATION_STATUS =
          T.let(
            :operationStatus,
            Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol
          )
        APPROVED_PUBLIC_COMPANY =
          T.let(
            :approvedPublicCompany,
            Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol
          )
        STOCK_EXCHANGE =
          T.let(
            :stockExchange,
            Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol
          )
        VETTING_CLASS =
          T.let(
            :vettingClass,
            Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::Number10dlcRetrieveParams::Endpoint::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
