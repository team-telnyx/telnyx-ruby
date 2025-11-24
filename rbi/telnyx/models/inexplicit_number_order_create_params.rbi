# typed: strong

module Telnyx
  module Models
    class InexplicitNumberOrderCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::InexplicitNumberOrderCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Group(s) of numbers to order. You can have multiple ordering_groups objects
      # added to a single request.
      sig do
        returns(
          T::Array[Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup]
        )
      end
      attr_accessor :ordering_groups

      # Billing group id to apply to phone numbers that are purchased
      sig { returns(T.nilable(String)) }
      attr_reader :billing_group_id

      sig { params(billing_group_id: String).void }
      attr_writer :billing_group_id

      # Connection id to apply to phone numbers that are purchased
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      # Reference label for the customer
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      # Messaging profile id to apply to phone numbers that are purchased
      sig { returns(T.nilable(String)) }
      attr_reader :messaging_profile_id

      sig { params(messaging_profile_id: String).void }
      attr_writer :messaging_profile_id

      sig do
        params(
          ordering_groups:
            T::Array[
              Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::OrHash
            ],
          billing_group_id: String,
          connection_id: String,
          customer_reference: String,
          messaging_profile_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Group(s) of numbers to order. You can have multiple ordering_groups objects
        # added to a single request.
        ordering_groups:,
        # Billing group id to apply to phone numbers that are purchased
        billing_group_id: nil,
        # Connection id to apply to phone numbers that are purchased
        connection_id: nil,
        # Reference label for the customer
        customer_reference: nil,
        # Messaging profile id to apply to phone numbers that are purchased
        messaging_profile_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            ordering_groups:
              T::Array[
                Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup
              ],
            billing_group_id: String,
            connection_id: String,
            customer_reference: String,
            messaging_profile_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class OrderingGroup < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup,
              Telnyx::Internal::AnyHash
            )
          end

        # Quantity of phone numbers to order
        sig { returns(String) }
        attr_accessor :count_requested

        # Country where you would like to purchase phone numbers. Allowable values: US, CA
        sig do
          returns(
            Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::CountryISO::OrSymbol
          )
        end
        attr_accessor :country_iso

        # Number type (local, toll-free, etc.)
        sig { returns(String) }
        attr_accessor :phone_number_type

        # Filter for phone numbers in a given state / province
        sig { returns(T.nilable(String)) }
        attr_reader :administrative_area

        sig { params(administrative_area: String).void }
        attr_writer :administrative_area

        # Filter for phone numbers that have the features to satisfy your use case (e.g.,
        # ["voice"])
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :features

        sig { params(features: T::Array[String]).void }
        attr_writer :features

        # Filter for phone numbers in a given city / region / rate center
        sig { returns(T.nilable(String)) }
        attr_reader :locality

        sig { params(locality: String).void }
        attr_writer :locality

        # Filter by area code
        sig { returns(T.nilable(String)) }
        attr_reader :national_destination_code

        sig { params(national_destination_code: String).void }
        attr_writer :national_destination_code

        # Phone number search criteria
        sig do
          returns(
            T.nilable(
              Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::PhoneNumber
            )
          )
        end
        attr_reader :phone_number

        sig do
          params(
            phone_number:
              Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::PhoneNumber::OrHash
          ).void
        end
        attr_writer :phone_number

        # Ordering strategy. Define what action should be taken if we don't have enough
        # phone numbers to fulfill your request. Allowable values are: always = proceed
        # with ordering phone numbers, regardless of current inventory levels; never = do
        # not place any orders unless there are enough phone numbers to satisfy the
        # request. If not specified, the always strategy will be enforced.
        sig do
          returns(
            T.nilable(
              Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::Strategy::OrSymbol
            )
          )
        end
        attr_reader :strategy

        sig do
          params(
            strategy:
              Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::Strategy::OrSymbol
          ).void
        end
        attr_writer :strategy

        sig do
          params(
            count_requested: String,
            country_iso:
              Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::CountryISO::OrSymbol,
            phone_number_type: String,
            administrative_area: String,
            features: T::Array[String],
            locality: String,
            national_destination_code: String,
            phone_number:
              Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::PhoneNumber::OrHash,
            strategy:
              Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::Strategy::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Quantity of phone numbers to order
          count_requested:,
          # Country where you would like to purchase phone numbers. Allowable values: US, CA
          country_iso:,
          # Number type (local, toll-free, etc.)
          phone_number_type:,
          # Filter for phone numbers in a given state / province
          administrative_area: nil,
          # Filter for phone numbers that have the features to satisfy your use case (e.g.,
          # ["voice"])
          features: nil,
          # Filter for phone numbers in a given city / region / rate center
          locality: nil,
          # Filter by area code
          national_destination_code: nil,
          # Phone number search criteria
          phone_number: nil,
          # Ordering strategy. Define what action should be taken if we don't have enough
          # phone numbers to fulfill your request. Allowable values are: always = proceed
          # with ordering phone numbers, regardless of current inventory levels; never = do
          # not place any orders unless there are enough phone numbers to satisfy the
          # request. If not specified, the always strategy will be enforced.
          strategy: nil
        )
        end

        sig do
          override.returns(
            {
              count_requested: String,
              country_iso:
                Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::CountryISO::OrSymbol,
              phone_number_type: String,
              administrative_area: String,
              features: T::Array[String],
              locality: String,
              national_destination_code: String,
              phone_number:
                Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::PhoneNumber,
              strategy:
                Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::Strategy::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Country where you would like to purchase phone numbers. Allowable values: US, CA
        module CountryISO
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::CountryISO
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          US =
            T.let(
              :US,
              Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::CountryISO::TaggedSymbol
            )
          CA =
            T.let(
              :CA,
              Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::CountryISO::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::CountryISO::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class PhoneNumber < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::PhoneNumber,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter for phone numbers that contain the digits specified
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          # Filter by the ending digits of the phone number
          sig { returns(T.nilable(String)) }
          attr_reader :ends_with

          sig { params(ends_with: String).void }
          attr_writer :ends_with

          # Filter by the starting digits of the phone number
          sig { returns(T.nilable(String)) }
          attr_reader :starts_with

          sig { params(starts_with: String).void }
          attr_writer :starts_with

          # Phone number search criteria
          sig do
            params(
              contains: String,
              ends_with: String,
              starts_with: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter for phone numbers that contain the digits specified
            contains: nil,
            # Filter by the ending digits of the phone number
            ends_with: nil,
            # Filter by the starting digits of the phone number
            starts_with: nil
          )
          end

          sig do
            override.returns(
              { contains: String, ends_with: String, starts_with: String }
            )
          end
          def to_hash
          end
        end

        # Ordering strategy. Define what action should be taken if we don't have enough
        # phone numbers to fulfill your request. Allowable values are: always = proceed
        # with ordering phone numbers, regardless of current inventory levels; never = do
        # not place any orders unless there are enough phone numbers to satisfy the
        # request. If not specified, the always strategy will be enforced.
        module Strategy
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::Strategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALWAYS =
            T.let(
              :always,
              Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::Strategy::TaggedSymbol
            )
          NEVER =
            T.let(
              :never,
              Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::Strategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::Strategy::TaggedSymbol
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
