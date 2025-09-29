# typed: strong

module Telnyx
  module Models
    class CustomerServiceRecordCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CustomerServiceRecordCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # A valid US phone number in E164 format.
      sig { returns(String) }
      attr_accessor :phone_number

      sig do
        returns(
          T.nilable(Telnyx::CustomerServiceRecordCreateParams::AdditionalData)
        )
      end
      attr_reader :additional_data

      sig do
        params(
          additional_data:
            Telnyx::CustomerServiceRecordCreateParams::AdditionalData::OrHash
        ).void
      end
      attr_writer :additional_data

      # Callback URL to receive webhook notifications.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      sig do
        params(
          phone_number: String,
          additional_data:
            Telnyx::CustomerServiceRecordCreateParams::AdditionalData::OrHash,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A valid US phone number in E164 format.
        phone_number:,
        additional_data: nil,
        # Callback URL to receive webhook notifications.
        webhook_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            phone_number: String,
            additional_data:
              Telnyx::CustomerServiceRecordCreateParams::AdditionalData,
            webhook_url: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class AdditionalData < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CustomerServiceRecordCreateParams::AdditionalData,
              Telnyx::Internal::AnyHash
            )
          end

        # The account number of the customer service record.
        sig { returns(T.nilable(String)) }
        attr_reader :account_number

        sig { params(account_number: String).void }
        attr_writer :account_number

        # The first line of the address of the customer service record.
        sig { returns(T.nilable(String)) }
        attr_reader :address_line_1

        sig { params(address_line_1: String).void }
        attr_writer :address_line_1

        # The name of the authorized person.
        sig { returns(T.nilable(String)) }
        attr_reader :authorized_person_name

        sig { params(authorized_person_name: String).void }
        attr_writer :authorized_person_name

        # The billing phone number of the customer service record.
        sig { returns(T.nilable(String)) }
        attr_reader :billing_phone_number

        sig { params(billing_phone_number: String).void }
        attr_writer :billing_phone_number

        # The city of the customer service record.
        sig { returns(T.nilable(String)) }
        attr_reader :city

        sig { params(city: String).void }
        attr_writer :city

        # The customer code of the customer service record.
        sig { returns(T.nilable(String)) }
        attr_reader :customer_code

        sig { params(customer_code: String).void }
        attr_writer :customer_code

        # The name of the administrator of CSR.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The PIN of the customer service record.
        sig { returns(T.nilable(String)) }
        attr_reader :pin

        sig { params(pin: String).void }
        attr_writer :pin

        # The state of the customer service record.
        sig { returns(T.nilable(String)) }
        attr_reader :state

        sig { params(state: String).void }
        attr_writer :state

        # The zip code of the customer service record.
        sig { returns(T.nilable(String)) }
        attr_reader :zip_code

        sig { params(zip_code: String).void }
        attr_writer :zip_code

        sig do
          params(
            account_number: String,
            address_line_1: String,
            authorized_person_name: String,
            billing_phone_number: String,
            city: String,
            customer_code: String,
            name: String,
            pin: String,
            state: String,
            zip_code: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The account number of the customer service record.
          account_number: nil,
          # The first line of the address of the customer service record.
          address_line_1: nil,
          # The name of the authorized person.
          authorized_person_name: nil,
          # The billing phone number of the customer service record.
          billing_phone_number: nil,
          # The city of the customer service record.
          city: nil,
          # The customer code of the customer service record.
          customer_code: nil,
          # The name of the administrator of CSR.
          name: nil,
          # The PIN of the customer service record.
          pin: nil,
          # The state of the customer service record.
          state: nil,
          # The zip code of the customer service record.
          zip_code: nil
        )
        end

        sig do
          override.returns(
            {
              account_number: String,
              address_line_1: String,
              authorized_person_name: String,
              billing_phone_number: String,
              city: String,
              customer_code: String,
              name: String,
              pin: String,
              state: String,
              zip_code: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
