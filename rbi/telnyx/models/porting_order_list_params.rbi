# typed: strong

module Telnyx
  module Models
    class PortingOrderListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrderListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[customer_reference], filter[customer_group_reference],
      # filter[parent_support_key], filter[phone_numbers.country_code],
      # filter[phone_numbers.carrier_name], filter[misc.type],
      # filter[end_user.admin.entity_name], filter[end_user.admin.auth_person_name],
      # filter[activation_settings.fast_port_eligible],
      # filter[activation_settings.foc_datetime_requested][gt],
      # filter[activation_settings.foc_datetime_requested][lt],
      # filter[phone_numbers.phone_number][contains]
      sig { returns(T.nilable(Telnyx::PortingOrderListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::PortingOrderListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Include the first 50 phone number objects in the results
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_phone_numbers

      sig { params(include_phone_numbers: T::Boolean).void }
      attr_writer :include_phone_numbers

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::PortingOrderListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::PortingOrderListParams::Page::OrHash).void }
      attr_writer :page

      # Consolidated sort parameter (deepObject style). Originally: sort[value]
      sig { returns(T.nilable(Telnyx::PortingOrderListParams::Sort)) }
      attr_reader :sort

      sig { params(sort: Telnyx::PortingOrderListParams::Sort::OrHash).void }
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::PortingOrderListParams::Filter::OrHash,
          include_phone_numbers: T::Boolean,
          page: Telnyx::PortingOrderListParams::Page::OrHash,
          sort: Telnyx::PortingOrderListParams::Sort::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[customer_reference], filter[customer_group_reference],
        # filter[parent_support_key], filter[phone_numbers.country_code],
        # filter[phone_numbers.carrier_name], filter[misc.type],
        # filter[end_user.admin.entity_name], filter[end_user.admin.auth_person_name],
        # filter[activation_settings.fast_port_eligible],
        # filter[activation_settings.foc_datetime_requested][gt],
        # filter[activation_settings.foc_datetime_requested][lt],
        # filter[phone_numbers.phone_number][contains]
        filter: nil,
        # Include the first 50 phone number objects in the results
        include_phone_numbers: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        # Consolidated sort parameter (deepObject style). Originally: sort[value]
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::PortingOrderListParams::Filter,
            include_phone_numbers: T::Boolean,
            page: Telnyx::PortingOrderListParams::Page,
            sort: Telnyx::PortingOrderListParams::Sort,
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
              Telnyx::PortingOrderListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrderListParams::Filter::ActivationSettings
            )
          )
        end
        attr_reader :activation_settings

        sig do
          params(
            activation_settings:
              Telnyx::PortingOrderListParams::Filter::ActivationSettings::OrHash
          ).void
        end
        attr_writer :activation_settings

        # Filter results by customer_group_reference
        sig { returns(T.nilable(String)) }
        attr_reader :customer_group_reference

        sig { params(customer_group_reference: String).void }
        attr_writer :customer_group_reference

        # Filter results by customer_reference
        sig { returns(T.nilable(String)) }
        attr_reader :customer_reference

        sig { params(customer_reference: String).void }
        attr_writer :customer_reference

        sig do
          returns(T.nilable(Telnyx::PortingOrderListParams::Filter::EndUser))
        end
        attr_reader :end_user

        sig do
          params(
            end_user: Telnyx::PortingOrderListParams::Filter::EndUser::OrHash
          ).void
        end
        attr_writer :end_user

        sig { returns(T.nilable(Telnyx::PortingOrderListParams::Filter::Misc)) }
        attr_reader :misc

        sig do
          params(
            misc: Telnyx::PortingOrderListParams::Filter::Misc::OrHash
          ).void
        end
        attr_writer :misc

        # Filter results by parent_support_key
        sig { returns(T.nilable(String)) }
        attr_reader :parent_support_key

        sig { params(parent_support_key: String).void }
        attr_writer :parent_support_key

        sig do
          returns(
            T.nilable(Telnyx::PortingOrderListParams::Filter::PhoneNumbers)
          )
        end
        attr_reader :phone_numbers

        sig do
          params(
            phone_numbers:
              Telnyx::PortingOrderListParams::Filter::PhoneNumbers::OrHash
          ).void
        end
        attr_writer :phone_numbers

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[customer_reference], filter[customer_group_reference],
        # filter[parent_support_key], filter[phone_numbers.country_code],
        # filter[phone_numbers.carrier_name], filter[misc.type],
        # filter[end_user.admin.entity_name], filter[end_user.admin.auth_person_name],
        # filter[activation_settings.fast_port_eligible],
        # filter[activation_settings.foc_datetime_requested][gt],
        # filter[activation_settings.foc_datetime_requested][lt],
        # filter[phone_numbers.phone_number][contains]
        sig do
          params(
            activation_settings:
              Telnyx::PortingOrderListParams::Filter::ActivationSettings::OrHash,
            customer_group_reference: String,
            customer_reference: String,
            end_user: Telnyx::PortingOrderListParams::Filter::EndUser::OrHash,
            misc: Telnyx::PortingOrderListParams::Filter::Misc::OrHash,
            parent_support_key: String,
            phone_numbers:
              Telnyx::PortingOrderListParams::Filter::PhoneNumbers::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          activation_settings: nil,
          # Filter results by customer_group_reference
          customer_group_reference: nil,
          # Filter results by customer_reference
          customer_reference: nil,
          end_user: nil,
          misc: nil,
          # Filter results by parent_support_key
          parent_support_key: nil,
          phone_numbers: nil
        )
        end

        sig do
          override.returns(
            {
              activation_settings:
                Telnyx::PortingOrderListParams::Filter::ActivationSettings,
              customer_group_reference: String,
              customer_reference: String,
              end_user: Telnyx::PortingOrderListParams::Filter::EndUser,
              misc: Telnyx::PortingOrderListParams::Filter::Misc,
              parent_support_key: String,
              phone_numbers:
                Telnyx::PortingOrderListParams::Filter::PhoneNumbers
            }
          )
        end
        def to_hash
        end

        class ActivationSettings < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrderListParams::Filter::ActivationSettings,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter results by fast port eligible
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :fast_port_eligible

          sig { params(fast_port_eligible: T::Boolean).void }
          attr_writer :fast_port_eligible

          # FOC datetime range filtering operations
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrderListParams::Filter::ActivationSettings::FocDatetimeRequested
              )
            )
          end
          attr_reader :foc_datetime_requested

          sig do
            params(
              foc_datetime_requested:
                Telnyx::PortingOrderListParams::Filter::ActivationSettings::FocDatetimeRequested::OrHash
            ).void
          end
          attr_writer :foc_datetime_requested

          sig do
            params(
              fast_port_eligible: T::Boolean,
              foc_datetime_requested:
                Telnyx::PortingOrderListParams::Filter::ActivationSettings::FocDatetimeRequested::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter results by fast port eligible
            fast_port_eligible: nil,
            # FOC datetime range filtering operations
            foc_datetime_requested: nil
          )
          end

          sig do
            override.returns(
              {
                fast_port_eligible: T::Boolean,
                foc_datetime_requested:
                  Telnyx::PortingOrderListParams::Filter::ActivationSettings::FocDatetimeRequested
              }
            )
          end
          def to_hash
          end

          class FocDatetimeRequested < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::PortingOrderListParams::Filter::ActivationSettings::FocDatetimeRequested,
                  Telnyx::Internal::AnyHash
                )
              end

            # Filter results by foc date later than this value
            sig { returns(T.nilable(String)) }
            attr_reader :gt

            sig { params(gt: String).void }
            attr_writer :gt

            # Filter results by foc date earlier than this value
            sig { returns(T.nilable(String)) }
            attr_reader :lt

            sig { params(lt: String).void }
            attr_writer :lt

            # FOC datetime range filtering operations
            sig { params(gt: String, lt: String).returns(T.attached_class) }
            def self.new(
              # Filter results by foc date later than this value
              gt: nil,
              # Filter results by foc date earlier than this value
              lt: nil
            )
            end

            sig { override.returns({ gt: String, lt: String }) }
            def to_hash
            end
          end
        end

        class EndUser < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrderListParams::Filter::EndUser,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(Telnyx::PortingOrderListParams::Filter::EndUser::Admin)
            )
          end
          attr_reader :admin

          sig do
            params(
              admin:
                Telnyx::PortingOrderListParams::Filter::EndUser::Admin::OrHash
            ).void
          end
          attr_writer :admin

          sig do
            params(
              admin:
                Telnyx::PortingOrderListParams::Filter::EndUser::Admin::OrHash
            ).returns(T.attached_class)
          end
          def self.new(admin: nil)
          end

          sig do
            override.returns(
              { admin: Telnyx::PortingOrderListParams::Filter::EndUser::Admin }
            )
          end
          def to_hash
          end

          class Admin < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::PortingOrderListParams::Filter::EndUser::Admin,
                  Telnyx::Internal::AnyHash
                )
              end

            # Filter results by authorized person
            sig { returns(T.nilable(String)) }
            attr_reader :auth_person_name

            sig { params(auth_person_name: String).void }
            attr_writer :auth_person_name

            # Filter results by person or company name
            sig { returns(T.nilable(String)) }
            attr_reader :entity_name

            sig { params(entity_name: String).void }
            attr_writer :entity_name

            sig do
              params(auth_person_name: String, entity_name: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Filter results by authorized person
              auth_person_name: nil,
              # Filter results by person or company name
              entity_name: nil
            )
            end

            sig do
              override.returns(
                { auth_person_name: String, entity_name: String }
              )
            end
            def to_hash
            end
          end
        end

        class Misc < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrderListParams::Filter::Misc,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter results by porting order type
          sig { returns(T.nilable(Telnyx::PortingOrderType::OrSymbol)) }
          attr_reader :type

          sig { params(type: Telnyx::PortingOrderType::OrSymbol).void }
          attr_writer :type

          sig do
            params(type: Telnyx::PortingOrderType::OrSymbol).returns(
              T.attached_class
            )
          end
          def self.new(
            # Filter results by porting order type
            type: nil
          )
          end

          sig { override.returns({ type: Telnyx::PortingOrderType::OrSymbol }) }
          def to_hash
          end
        end

        class PhoneNumbers < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrderListParams::Filter::PhoneNumbers,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter results by old service provider
          sig { returns(T.nilable(String)) }
          attr_reader :carrier_name

          sig { params(carrier_name: String).void }
          attr_writer :carrier_name

          # Filter results by country ISO 3166-1 alpha-2 code
          sig { returns(T.nilable(String)) }
          attr_reader :country_code

          sig { params(country_code: String).void }
          attr_writer :country_code

          # Phone number pattern filtering operations
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrderListParams::Filter::PhoneNumbers::PhoneNumber
              )
            )
          end
          attr_reader :phone_number

          sig do
            params(
              phone_number:
                Telnyx::PortingOrderListParams::Filter::PhoneNumbers::PhoneNumber::OrHash
            ).void
          end
          attr_writer :phone_number

          sig do
            params(
              carrier_name: String,
              country_code: String,
              phone_number:
                Telnyx::PortingOrderListParams::Filter::PhoneNumbers::PhoneNumber::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter results by old service provider
            carrier_name: nil,
            # Filter results by country ISO 3166-1 alpha-2 code
            country_code: nil,
            # Phone number pattern filtering operations
            phone_number: nil
          )
          end

          sig do
            override.returns(
              {
                carrier_name: String,
                country_code: String,
                phone_number:
                  Telnyx::PortingOrderListParams::Filter::PhoneNumbers::PhoneNumber
              }
            )
          end
          def to_hash
          end

          class PhoneNumber < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::PortingOrderListParams::Filter::PhoneNumbers::PhoneNumber,
                  Telnyx::Internal::AnyHash
                )
              end

            # Filter results by full or partial phone_number
            sig { returns(T.nilable(String)) }
            attr_reader :contains

            sig { params(contains: String).void }
            attr_writer :contains

            # Phone number pattern filtering operations
            sig { params(contains: String).returns(T.attached_class) }
            def self.new(
              # Filter results by full or partial phone_number
              contains: nil
            )
            end

            sig { override.returns({ contains: String }) }
            def to_hash
            end
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrderListParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        # The page number to load
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # The size of the page
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # The page number to load
          number: nil,
          # The size of the page
          size: nil
        )
        end

        sig { override.returns({ number: Integer, size: Integer }) }
        def to_hash
        end
      end

      class Sort < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrderListParams::Sort,
              Telnyx::Internal::AnyHash
            )
          end

        # Specifies the sort order for results. If not given, results are sorted by
        # created_at in descending order.
        sig do
          returns(
            T.nilable(Telnyx::PortingOrderListParams::Sort::Value::OrSymbol)
          )
        end
        attr_reader :value

        sig do
          params(
            value: Telnyx::PortingOrderListParams::Sort::Value::OrSymbol
          ).void
        end
        attr_writer :value

        # Consolidated sort parameter (deepObject style). Originally: sort[value]
        sig do
          params(
            value: Telnyx::PortingOrderListParams::Sort::Value::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          value: nil
        )
        end

        sig do
          override.returns(
            { value: Telnyx::PortingOrderListParams::Sort::Value::OrSymbol }
          )
        end
        def to_hash
        end

        # Specifies the sort order for results. If not given, results are sorted by
        # created_at in descending order.
        module Value
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PortingOrderListParams::Sort::Value)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED_AT =
            T.let(
              :created_at,
              Telnyx::PortingOrderListParams::Sort::Value::TaggedSymbol
            )
          CREATED_AT_DESC =
            T.let(
              :"-created_at",
              Telnyx::PortingOrderListParams::Sort::Value::TaggedSymbol
            )
          ACTIVATION_SETTINGS_FOC_DATETIME_REQUESTED =
            T.let(
              :"activation_settings.foc_datetime_requested",
              Telnyx::PortingOrderListParams::Sort::Value::TaggedSymbol
            )
          ACTIVATION_SETTINGS_FOC_DATETIME_REQUESTED_DESC =
            T.let(
              :"-activation_settings.foc_datetime_requested",
              Telnyx::PortingOrderListParams::Sort::Value::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingOrderListParams::Sort::Value::TaggedSymbol
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
