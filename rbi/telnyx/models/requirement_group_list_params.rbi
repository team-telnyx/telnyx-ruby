# typed: strong

module Telnyx
  module Models
    class RequirementGroupListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::RequirementGroupListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[country_code], filter[phone_number_type], filter[action], filter[status],
      # filter[customer_reference]
      sig { returns(T.nilable(Telnyx::RequirementGroupListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::RequirementGroupListParams::Filter::OrHash).void
      end
      attr_writer :filter

      sig do
        params(
          filter: Telnyx::RequirementGroupListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[country_code], filter[phone_number_type], filter[action], filter[status],
        # filter[customer_reference]
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::RequirementGroupListParams::Filter,
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
              Telnyx::RequirementGroupListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter requirement groups by action type
        sig do
          returns(
            T.nilable(
              Telnyx::RequirementGroupListParams::Filter::Action::OrSymbol
            )
          )
        end
        attr_reader :action

        sig do
          params(
            action: Telnyx::RequirementGroupListParams::Filter::Action::OrSymbol
          ).void
        end
        attr_writer :action

        # Filter requirement groups by country code (iso alpha 2)
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Filter requirement groups by customer reference
        sig { returns(T.nilable(String)) }
        attr_reader :customer_reference

        sig { params(customer_reference: String).void }
        attr_writer :customer_reference

        # Filter requirement groups by phone number type.
        sig do
          returns(
            T.nilable(
              Telnyx::RequirementGroupListParams::Filter::PhoneNumberType::OrSymbol
            )
          )
        end
        attr_reader :phone_number_type

        sig do
          params(
            phone_number_type:
              Telnyx::RequirementGroupListParams::Filter::PhoneNumberType::OrSymbol
          ).void
        end
        attr_writer :phone_number_type

        # Filter requirement groups by status
        sig do
          returns(
            T.nilable(
              Telnyx::RequirementGroupListParams::Filter::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::RequirementGroupListParams::Filter::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[country_code], filter[phone_number_type], filter[action], filter[status],
        # filter[customer_reference]
        sig do
          params(
            action:
              Telnyx::RequirementGroupListParams::Filter::Action::OrSymbol,
            country_code: String,
            customer_reference: String,
            phone_number_type:
              Telnyx::RequirementGroupListParams::Filter::PhoneNumberType::OrSymbol,
            status: Telnyx::RequirementGroupListParams::Filter::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter requirement groups by action type
          action: nil,
          # Filter requirement groups by country code (iso alpha 2)
          country_code: nil,
          # Filter requirement groups by customer reference
          customer_reference: nil,
          # Filter requirement groups by phone number type.
          phone_number_type: nil,
          # Filter requirement groups by status
          status: nil
        )
        end

        sig do
          override.returns(
            {
              action:
                Telnyx::RequirementGroupListParams::Filter::Action::OrSymbol,
              country_code: String,
              customer_reference: String,
              phone_number_type:
                Telnyx::RequirementGroupListParams::Filter::PhoneNumberType::OrSymbol,
              status:
                Telnyx::RequirementGroupListParams::Filter::Status::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Filter requirement groups by action type
        module Action
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::RequirementGroupListParams::Filter::Action)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ORDERING =
            T.let(
              :ordering,
              Telnyx::RequirementGroupListParams::Filter::Action::TaggedSymbol
            )
          PORTING =
            T.let(
              :porting,
              Telnyx::RequirementGroupListParams::Filter::Action::TaggedSymbol
            )
          ACTION =
            T.let(
              :action,
              Telnyx::RequirementGroupListParams::Filter::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::RequirementGroupListParams::Filter::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filter requirement groups by phone number type.
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::RequirementGroupListParams::Filter::PhoneNumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOCAL =
            T.let(
              :local,
              Telnyx::RequirementGroupListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          TOLL_FREE =
            T.let(
              :toll_free,
              Telnyx::RequirementGroupListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          MOBILE =
            T.let(
              :mobile,
              Telnyx::RequirementGroupListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          NATIONAL =
            T.let(
              :national,
              Telnyx::RequirementGroupListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          SHARED_COST =
            T.let(
              :shared_cost,
              Telnyx::RequirementGroupListParams::Filter::PhoneNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::RequirementGroupListParams::Filter::PhoneNumberType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filter requirement groups by status
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::RequirementGroupListParams::Filter::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :approved,
              Telnyx::RequirementGroupListParams::Filter::Status::TaggedSymbol
            )
          UNAPPROVED =
            T.let(
              :unapproved,
              Telnyx::RequirementGroupListParams::Filter::Status::TaggedSymbol
            )
          PENDING_APPROVAL =
            T.let(
              :"pending-approval",
              Telnyx::RequirementGroupListParams::Filter::Status::TaggedSymbol
            )
          DECLINED =
            T.let(
              :declined,
              Telnyx::RequirementGroupListParams::Filter::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::RequirementGroupListParams::Filter::Status::TaggedSymbol
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
