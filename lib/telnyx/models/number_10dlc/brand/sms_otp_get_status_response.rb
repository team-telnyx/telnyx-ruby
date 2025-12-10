# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      module Brand
        # @see Telnyx::Resources::Number10dlc::Brand::SMSOtp#get_status
        class SMSOtpGetStatusResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute brand_id
          #   The Brand ID associated with this OTP request
          #
          #   @return [String]
          required :brand_id, String, api_name: :brandId

          # @!attribute delivery_status
          #   The current delivery status of the OTP SMS message. Common values include:
          #   `DELIVERED_HANDSET`, `PENDING`, `FAILED`, `EXPIRED`
          #
          #   @return [String]
          required :delivery_status, String, api_name: :deliveryStatus

          # @!attribute mobile_phone
          #   The mobile phone number where the OTP was sent, in E.164 format
          #
          #   @return [String]
          required :mobile_phone, String, api_name: :mobilePhone

          # @!attribute reference_id
          #   The reference ID for this OTP request, used for status queries
          #
          #   @return [String]
          required :reference_id, String, api_name: :referenceId

          # @!attribute request_date
          #   The timestamp when the OTP request was initiated
          #
          #   @return [Time]
          required :request_date, Time, api_name: :requestDate

          # @!attribute delivery_status_date
          #   The timestamp when the delivery status was last updated
          #
          #   @return [Time, nil]
          optional :delivery_status_date, Time, api_name: :deliveryStatusDate

          # @!attribute delivery_status_details
          #   Additional details about the delivery status
          #
          #   @return [String, nil]
          optional :delivery_status_details, String, api_name: :deliveryStatusDetails

          # @!attribute verify_date
          #   The timestamp when the OTP was successfully verified (if applicable)
          #
          #   @return [Time, nil]
          optional :verify_date, Time, api_name: :verifyDate

          # @!method initialize(brand_id:, delivery_status:, mobile_phone:, reference_id:, request_date:, delivery_status_date: nil, delivery_status_details: nil, verify_date: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Number10dlc::Brand::SMSOtpGetStatusResponse} for more details.
          #
          #   Status information for an SMS OTP sent during Sole Proprietor brand verification
          #
          #   @param brand_id [String] The Brand ID associated with this OTP request
          #
          #   @param delivery_status [String] The current delivery status of the OTP SMS message. Common values include: `DELI
          #
          #   @param mobile_phone [String] The mobile phone number where the OTP was sent, in E.164 format
          #
          #   @param reference_id [String] The reference ID for this OTP request, used for status queries
          #
          #   @param request_date [Time] The timestamp when the OTP request was initiated
          #
          #   @param delivery_status_date [Time] The timestamp when the delivery status was last updated
          #
          #   @param delivery_status_details [String] Additional details about the delivery status
          #
          #   @param verify_date [Time] The timestamp when the OTP was successfully verified (if applicable)
        end
      end
    end
  end
end
