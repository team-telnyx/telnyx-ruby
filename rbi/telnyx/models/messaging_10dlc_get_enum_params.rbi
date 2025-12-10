# typed: strong

module Telnyx
  module Models
    class Messaging10dlcGetEnumParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::Messaging10dlcGetEnumParams, Telnyx::Internal::AnyHash)
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
            T.all(Symbol, Telnyx::Messaging10dlcGetEnumParams::Endpoint)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MNO =
          T.let(
            :mno,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )
        OPTIONAL_ATTRIBUTES =
          T.let(
            :optionalAttributes,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )
        USECASE =
          T.let(
            :usecase,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )
        VERTICAL =
          T.let(
            :vertical,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )
        ALT_BUSINESS_ID_TYPE =
          T.let(
            :altBusinessIdType,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )
        BRAND_IDENTITY_STATUS =
          T.let(
            :brandIdentityStatus,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )
        BRAND_RELATIONSHIP =
          T.let(
            :brandRelationship,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )
        CAMPAIGN_STATUS =
          T.let(
            :campaignStatus,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )
        ENTITY_TYPE =
          T.let(
            :entityType,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )
        EXT_VETTING_PROVIDER =
          T.let(
            :extVettingProvider,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )
        VETTING_STATUS =
          T.let(
            :vettingStatus,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )
        BRAND_STATUS =
          T.let(
            :brandStatus,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )
        OPERATION_STATUS =
          T.let(
            :operationStatus,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )
        APPROVED_PUBLIC_COMPANY =
          T.let(
            :approvedPublicCompany,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )
        STOCK_EXCHANGE =
          T.let(
            :stockExchange,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )
        VETTING_CLASS =
          T.let(
            :vettingClass,
            Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Messaging10dlcGetEnumParams::Endpoint::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
