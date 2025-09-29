# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCards#get_device_details
    class SimCardGetDeviceDetailsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::SimCardGetDeviceDetailsResponse::Data, nil]
      optional :data, -> { Telnyx::Models::SimCardGetDeviceDetailsResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::SimCardGetDeviceDetailsResponse::Data]

      # @see Telnyx::Models::SimCardGetDeviceDetailsResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        response_only do
          # @!attribute brand_name
          #   Brand of the device where the SIM card is being used in.
          #
          #   @return [String, nil]
          optional :brand_name, String

          # @!attribute device_type
          #   Type of the device where the SIM card is being used in.
          #
          #   @return [String, nil]
          optional :device_type, String

          # @!attribute imei
          #   IMEI of the device where the SIM card is being used in.
          #
          #   @return [String, nil]
          optional :imei, String

          # @!attribute model_name
          #   Brand of the device where the SIM card is being used in.
          #
          #   @return [String, nil]
          optional :model_name, String

          # @!attribute operating_system
          #   Operating system of the device where the SIM card is being used in.
          #
          #   @return [String, nil]
          optional :operating_system, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(brand_name: nil, device_type: nil, imei: nil, model_name: nil, operating_system: nil, record_type: nil)
        #   @param brand_name [String] Brand of the device where the SIM card is being used in.
        #
        #   @param device_type [String] Type of the device where the SIM card is being used in.
        #
        #   @param imei [String] IMEI of the device where the SIM card is being used in.
        #
        #   @param model_name [String] Brand of the device where the SIM card is being used in.
        #
        #   @param operating_system [String] Operating system of the device where the SIM card is being used in.
        #
        #   @param record_type [String]
      end
    end
  end
end
