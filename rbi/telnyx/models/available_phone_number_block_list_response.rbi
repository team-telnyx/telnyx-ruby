# typed: strong

module Telnyx
  module Models
    class AvailablePhoneNumberBlockListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AvailablePhoneNumberBlockListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data
            ]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::AvailablePhoneNumbersMetadata)) }
      attr_reader :meta

      sig { params(meta: Telnyx::AvailablePhoneNumbersMetadata::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::OrHash
            ],
          meta: Telnyx::AvailablePhoneNumbersMetadata::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data
              ],
            meta: Telnyx::AvailablePhoneNumbersMetadata
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::CostInformation)) }
        attr_reader :cost_information

        sig { params(cost_information: Telnyx::CostInformation::OrHash).void }
        attr_writer :cost_information

        sig { returns(T.nilable(T::Array[Telnyx::Feature])) }
        attr_reader :features

        sig { params(features: T::Array[Telnyx::Feature::OrHash]).void }
        attr_writer :features

        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :range

        sig { params(range: Integer).void }
        attr_writer :range

        sig do
          returns(
            T.nilable(
              Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig { returns(T.nilable(T::Array[Telnyx::RegionInformation])) }
        attr_reader :region_information

        sig do
          params(
            region_information: T::Array[Telnyx::RegionInformation::OrHash]
          ).void
        end
        attr_writer :region_information

        sig do
          params(
            cost_information: Telnyx::CostInformation::OrHash,
            features: T::Array[Telnyx::Feature::OrHash],
            phone_number: String,
            range: Integer,
            record_type:
              Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RecordType::OrSymbol,
            region_information: T::Array[Telnyx::RegionInformation::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          cost_information: nil,
          features: nil,
          phone_number: nil,
          range: nil,
          record_type: nil,
          region_information: nil
        )
        end

        sig do
          override.returns(
            {
              cost_information: Telnyx::CostInformation,
              features: T::Array[Telnyx::Feature],
              phone_number: String,
              range: Integer,
              record_type:
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RecordType::TaggedSymbol,
              region_information: T::Array[Telnyx::RegionInformation]
            }
          )
        end
        def to_hash
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AVAILABLE_PHONE_NUMBER_BLOCK =
            T.let(
              :available_phone_number_block,
              Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RecordType::TaggedSymbol
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
