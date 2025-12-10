# typed: strong

module Telnyx
  module Models
    class MobileNetworkOperatorListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MobileNetworkOperatorListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::MobileNetworkOperatorListResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::MobileNetworkOperatorListResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::MobileNetworkOperatorListResponse::Data::OrHash
            ],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[Telnyx::Models::MobileNetworkOperatorListResponse::Data],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MobileNetworkOperatorListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The mobile operator two-character (ISO 3166-1 alpha-2) origin country code.
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # MCC stands for Mobile Country Code. It's a three decimal digit that identifies a
        # country.<br/><br/> This code is commonly seen joined with a Mobile Network Code
        # (MNC) in a tuple that allows identifying a carrier known as PLMN (Public Land
        # Mobile Network) code.
        sig { returns(T.nilable(String)) }
        attr_reader :mcc

        sig { params(mcc: String).void }
        attr_writer :mcc

        # MNC stands for Mobile Network Code. It's a two to three decimal digits that
        # identify a network.<br/><br/> This code is commonly seen joined with a Mobile
        # Country Code (MCC) in a tuple that allows identifying a carrier known as PLMN
        # (Public Land Mobile Network) code.
        sig { returns(T.nilable(String)) }
        attr_reader :mnc

        sig { params(mnc: String).void }
        attr_writer :mnc

        # The network operator name.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # TADIG stands for Transferred Account Data Interchange Group. The TADIG code is a
        # unique identifier for network operators in GSM mobile networks.
        sig { returns(T.nilable(String)) }
        attr_reader :tadig

        sig { params(tadig: String).void }
        attr_writer :tadig

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Indicate whether the mobile network operator can be set as preferred in the
        # Network Preferences API.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :network_preferences_enabled

        sig { params(network_preferences_enabled: T::Boolean).void }
        attr_writer :network_preferences_enabled

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            id: String,
            country_code: String,
            mcc: String,
            mnc: String,
            name: String,
            network_preferences_enabled: T::Boolean,
            record_type: String,
            tadig: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # The mobile operator two-character (ISO 3166-1 alpha-2) origin country code.
          country_code: nil,
          # MCC stands for Mobile Country Code. It's a three decimal digit that identifies a
          # country.<br/><br/> This code is commonly seen joined with a Mobile Network Code
          # (MNC) in a tuple that allows identifying a carrier known as PLMN (Public Land
          # Mobile Network) code.
          mcc: nil,
          # MNC stands for Mobile Network Code. It's a two to three decimal digits that
          # identify a network.<br/><br/> This code is commonly seen joined with a Mobile
          # Country Code (MCC) in a tuple that allows identifying a carrier known as PLMN
          # (Public Land Mobile Network) code.
          mnc: nil,
          # The network operator name.
          name: nil,
          # Indicate whether the mobile network operator can be set as preferred in the
          # Network Preferences API.
          network_preferences_enabled: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # TADIG stands for Transferred Account Data Interchange Group. The TADIG code is a
          # unique identifier for network operators in GSM mobile networks.
          tadig: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              country_code: String,
              mcc: String,
              mnc: String,
              name: String,
              network_preferences_enabled: T::Boolean,
              record_type: String,
              tadig: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
