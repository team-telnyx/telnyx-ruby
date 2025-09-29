# typed: strong

module Telnyx
  module Models
    class RegulatoryRequirementRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::RegulatoryRequirementRetrieveParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[phone_number], filter[requirement_group_id], filter[country_code],
      # filter[phone_number_type], filter[action]
      sig do
        returns(T.nilable(Telnyx::RegulatoryRequirementRetrieveParams::Filter))
      end
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::RegulatoryRequirementRetrieveParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      sig do
        params(
          filter: Telnyx::RegulatoryRequirementRetrieveParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[phone_number], filter[requirement_group_id], filter[country_code],
        # filter[phone_number_type], filter[action]
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::RegulatoryRequirementRetrieveParams::Filter,
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
              Telnyx::RegulatoryRequirementRetrieveParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Action to check requirements for
        sig do
          returns(
            T.nilable(
              Telnyx::RegulatoryRequirementRetrieveParams::Filter::Action::OrSymbol
            )
          )
        end
        attr_reader :action

        sig do
          params(
            action:
              Telnyx::RegulatoryRequirementRetrieveParams::Filter::Action::OrSymbol
          ).void
        end
        attr_writer :action

        # Country code(iso2) to check requirements for
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Phone number to check requirements for
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Phone number type to check requirements for
        sig do
          returns(
            T.nilable(
              Telnyx::RegulatoryRequirementRetrieveParams::Filter::PhoneNumberType::OrSymbol
            )
          )
        end
        attr_reader :phone_number_type

        sig do
          params(
            phone_number_type:
              Telnyx::RegulatoryRequirementRetrieveParams::Filter::PhoneNumberType::OrSymbol
          ).void
        end
        attr_writer :phone_number_type

        # ID of requirement group to check requirements for
        sig { returns(T.nilable(String)) }
        attr_reader :requirement_group_id

        sig { params(requirement_group_id: String).void }
        attr_writer :requirement_group_id

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[phone_number], filter[requirement_group_id], filter[country_code],
        # filter[phone_number_type], filter[action]
        sig do
          params(
            action:
              Telnyx::RegulatoryRequirementRetrieveParams::Filter::Action::OrSymbol,
            country_code: String,
            phone_number: String,
            phone_number_type:
              Telnyx::RegulatoryRequirementRetrieveParams::Filter::PhoneNumberType::OrSymbol,
            requirement_group_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Action to check requirements for
          action: nil,
          # Country code(iso2) to check requirements for
          country_code: nil,
          # Phone number to check requirements for
          phone_number: nil,
          # Phone number type to check requirements for
          phone_number_type: nil,
          # ID of requirement group to check requirements for
          requirement_group_id: nil
        )
        end

        sig do
          override.returns(
            {
              action:
                Telnyx::RegulatoryRequirementRetrieveParams::Filter::Action::OrSymbol,
              country_code: String,
              phone_number: String,
              phone_number_type:
                Telnyx::RegulatoryRequirementRetrieveParams::Filter::PhoneNumberType::OrSymbol,
              requirement_group_id: String
            }
          )
        end
        def to_hash
        end

        # Action to check requirements for
        module Action
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::RegulatoryRequirementRetrieveParams::Filter::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ORDERING =
            T.let(
              :ordering,
              Telnyx::RegulatoryRequirementRetrieveParams::Filter::Action::TaggedSymbol
            )
          PORTING =
            T.let(
              :porting,
              Telnyx::RegulatoryRequirementRetrieveParams::Filter::Action::TaggedSymbol
            )
          ACTION =
            T.let(
              :action,
              Telnyx::RegulatoryRequirementRetrieveParams::Filter::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::RegulatoryRequirementRetrieveParams::Filter::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Phone number type to check requirements for
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::RegulatoryRequirementRetrieveParams::Filter::PhoneNumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOCAL =
            T.let(
              :local,
              Telnyx::RegulatoryRequirementRetrieveParams::Filter::PhoneNumberType::TaggedSymbol
            )
          TOLL_FREE =
            T.let(
              :toll_free,
              Telnyx::RegulatoryRequirementRetrieveParams::Filter::PhoneNumberType::TaggedSymbol
            )
          MOBILE =
            T.let(
              :mobile,
              Telnyx::RegulatoryRequirementRetrieveParams::Filter::PhoneNumberType::TaggedSymbol
            )
          NATIONAL =
            T.let(
              :national,
              Telnyx::RegulatoryRequirementRetrieveParams::Filter::PhoneNumberType::TaggedSymbol
            )
          SHARED_COST =
            T.let(
              :shared_cost,
              Telnyx::RegulatoryRequirementRetrieveParams::Filter::PhoneNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::RegulatoryRequirementRetrieveParams::Filter::PhoneNumberType::TaggedSymbol
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
