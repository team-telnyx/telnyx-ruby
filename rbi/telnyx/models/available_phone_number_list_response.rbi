# typed: strong

module Telnyx
  module Models
    class AvailablePhoneNumberListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AvailablePhoneNumberListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::AvailablePhoneNumberListResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::AvailablePhoneNumberListResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::AvailablePhoneNumbersMetadata)) }
      attr_reader :meta

      sig { params(meta: Telnyx::AvailablePhoneNumbersMetadata::OrHash).void }
      attr_writer :meta

      sig { returns(T.nilable(Telnyx::AvailablePhoneNumbersMetadata)) }
      attr_reader :metadata

      sig do
        params(metadata: Telnyx::AvailablePhoneNumbersMetadata::OrHash).void
      end
      attr_writer :metadata

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::AvailablePhoneNumberListResponse::Data::OrHash
            ],
          meta: Telnyx::AvailablePhoneNumbersMetadata::OrHash,
          metadata: Telnyx::AvailablePhoneNumbersMetadata::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil, metadata: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[Telnyx::Models::AvailablePhoneNumberListResponse::Data],
            meta: Telnyx::AvailablePhoneNumbersMetadata,
            metadata: Telnyx::AvailablePhoneNumbersMetadata
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AvailablePhoneNumberListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Specifies whether the phone number is an exact match based on the search
        # criteria or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :best_effort

        sig { params(best_effort: T::Boolean).void }
        attr_writer :best_effort

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

        # Specifies whether the phone number can receive calls immediately after purchase
        # or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :quickship

        sig { params(quickship: T::Boolean).void }
        attr_writer :quickship

        sig do
          returns(
            T.nilable(
              Telnyx::Models::AvailablePhoneNumberListResponse::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::Models::AvailablePhoneNumberListResponse::Data::RecordType::OrSymbol
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

        # Specifies whether the phone number can be reserved before purchase or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :reservable

        sig { params(reservable: T::Boolean).void }
        attr_writer :reservable

        sig { returns(T.nilable(String)) }
        attr_reader :vanity_format

        sig { params(vanity_format: String).void }
        attr_writer :vanity_format

        sig do
          params(
            best_effort: T::Boolean,
            cost_information: Telnyx::CostInformation::OrHash,
            features: T::Array[Telnyx::Feature::OrHash],
            phone_number: String,
            quickship: T::Boolean,
            record_type:
              Telnyx::Models::AvailablePhoneNumberListResponse::Data::RecordType::OrSymbol,
            region_information: T::Array[Telnyx::RegionInformation::OrHash],
            reservable: T::Boolean,
            vanity_format: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies whether the phone number is an exact match based on the search
          # criteria or not.
          best_effort: nil,
          cost_information: nil,
          features: nil,
          phone_number: nil,
          # Specifies whether the phone number can receive calls immediately after purchase
          # or not.
          quickship: nil,
          record_type: nil,
          region_information: nil,
          # Specifies whether the phone number can be reserved before purchase or not.
          reservable: nil,
          vanity_format: nil
        )
        end

        sig do
          override.returns(
            {
              best_effort: T::Boolean,
              cost_information: Telnyx::CostInformation,
              features: T::Array[Telnyx::Feature],
              phone_number: String,
              quickship: T::Boolean,
              record_type:
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::RecordType::TaggedSymbol,
              region_information: T::Array[Telnyx::RegionInformation],
              reservable: T::Boolean,
              vanity_format: String
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
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AVAILABLE_PHONE_NUMBER =
            T.let(
              :available_phone_number,
              Telnyx::Models::AvailablePhoneNumberListResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::RecordType::TaggedSymbol
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
