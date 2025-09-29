# typed: strong

module Telnyx
  module Models
    class SimCardGetDeviceDetailsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SimCardGetDeviceDetailsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::SimCardGetDeviceDetailsResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::SimCardGetDeviceDetailsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::SimCardGetDeviceDetailsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::SimCardGetDeviceDetailsResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SimCardGetDeviceDetailsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Brand of the device where the SIM card is being used in.
        sig { returns(T.nilable(String)) }
        attr_reader :brand_name

        sig { params(brand_name: String).void }
        attr_writer :brand_name

        # Type of the device where the SIM card is being used in.
        sig { returns(T.nilable(String)) }
        attr_reader :device_type

        sig { params(device_type: String).void }
        attr_writer :device_type

        # IMEI of the device where the SIM card is being used in.
        sig { returns(T.nilable(String)) }
        attr_reader :imei

        sig { params(imei: String).void }
        attr_writer :imei

        # Brand of the device where the SIM card is being used in.
        sig { returns(T.nilable(String)) }
        attr_reader :model_name

        sig { params(model_name: String).void }
        attr_writer :model_name

        # Operating system of the device where the SIM card is being used in.
        sig { returns(T.nilable(String)) }
        attr_reader :operating_system

        sig { params(operating_system: String).void }
        attr_writer :operating_system

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            brand_name: String,
            device_type: String,
            imei: String,
            model_name: String,
            operating_system: String,
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Brand of the device where the SIM card is being used in.
          brand_name: nil,
          # Type of the device where the SIM card is being used in.
          device_type: nil,
          # IMEI of the device where the SIM card is being used in.
          imei: nil,
          # Brand of the device where the SIM card is being used in.
          model_name: nil,
          # Operating system of the device where the SIM card is being used in.
          operating_system: nil,
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              brand_name: String,
              device_type: String,
              imei: String,
              model_name: String,
              operating_system: String,
              record_type: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
