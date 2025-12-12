# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      class BrandRetrieveSMSOtpStatusResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Messaging10dlc::BrandRetrieveSMSOtpStatusResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # The Brand ID associated with this OTP request
        sig { returns(String) }
        attr_accessor :brand_id

        # The current delivery status of the OTP SMS message. Common values include:
        # `DELIVERED_HANDSET`, `PENDING`, `FAILED`, `EXPIRED`
        sig { returns(String) }
        attr_accessor :delivery_status

        # The mobile phone number where the OTP was sent, in E.164 format
        sig { returns(String) }
        attr_accessor :mobile_phone

        # The reference ID for this OTP request, used for status queries
        sig { returns(String) }
        attr_accessor :reference_id

        # The timestamp when the OTP request was initiated
        sig { returns(Time) }
        attr_accessor :request_date

        # The timestamp when the delivery status was last updated
        sig { returns(T.nilable(Time)) }
        attr_reader :delivery_status_date

        sig { params(delivery_status_date: Time).void }
        attr_writer :delivery_status_date

        # Additional details about the delivery status
        sig { returns(T.nilable(String)) }
        attr_reader :delivery_status_details

        sig { params(delivery_status_details: String).void }
        attr_writer :delivery_status_details

        # The timestamp when the OTP was successfully verified (if applicable)
        sig { returns(T.nilable(Time)) }
        attr_reader :verify_date

        sig { params(verify_date: Time).void }
        attr_writer :verify_date

        # Status information for an SMS OTP sent during Sole Proprietor brand verification
        sig do
          params(
            brand_id: String,
            delivery_status: String,
            mobile_phone: String,
            reference_id: String,
            request_date: Time,
            delivery_status_date: Time,
            delivery_status_details: String,
            verify_date: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The Brand ID associated with this OTP request
          brand_id:,
          # The current delivery status of the OTP SMS message. Common values include:
          # `DELIVERED_HANDSET`, `PENDING`, `FAILED`, `EXPIRED`
          delivery_status:,
          # The mobile phone number where the OTP was sent, in E.164 format
          mobile_phone:,
          # The reference ID for this OTP request, used for status queries
          reference_id:,
          # The timestamp when the OTP request was initiated
          request_date:,
          # The timestamp when the delivery status was last updated
          delivery_status_date: nil,
          # Additional details about the delivery status
          delivery_status_details: nil,
          # The timestamp when the OTP was successfully verified (if applicable)
          verify_date: nil
        )
        end

        sig do
          override.returns(
            {
              brand_id: String,
              delivery_status: String,
              mobile_phone: String,
              reference_id: String,
              request_date: Time,
              delivery_status_date: Time,
              delivery_status_details: String,
              verify_date: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
