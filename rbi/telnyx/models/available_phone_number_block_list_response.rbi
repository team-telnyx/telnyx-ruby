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

        sig do
          returns(
            T.nilable(
              Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::CostInformation
            )
          )
        end
        attr_reader :cost_information

        sig do
          params(
            cost_information:
              Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::CostInformation::OrHash
          ).void
        end
        attr_writer :cost_information

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::Feature
              ]
            )
          )
        end
        attr_reader :features

        sig do
          params(
            features:
              T::Array[
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::Feature::OrHash
              ]
          ).void
        end
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

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation
              ]
            )
          )
        end
        attr_reader :region_information

        sig do
          params(
            region_information:
              T::Array[
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation::OrHash
              ]
          ).void
        end
        attr_writer :region_information

        sig do
          params(
            cost_information:
              Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::CostInformation::OrHash,
            features:
              T::Array[
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::Feature::OrHash
              ],
            phone_number: String,
            range: Integer,
            record_type:
              Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RecordType::OrSymbol,
            region_information:
              T::Array[
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation::OrHash
              ]
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
              cost_information:
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::CostInformation,
              features:
                T::Array[
                  Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::Feature
                ],
              phone_number: String,
              range: Integer,
              record_type:
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RecordType::TaggedSymbol,
              region_information:
                T::Array[
                  Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation
                ]
            }
          )
        end
        def to_hash
        end

        class CostInformation < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::CostInformation,
                Telnyx::Internal::AnyHash
              )
            end

          # The ISO 4217 code for the currency.
          sig { returns(T.nilable(String)) }
          attr_reader :currency

          sig { params(currency: String).void }
          attr_writer :currency

          sig { returns(T.nilable(String)) }
          attr_reader :monthly_cost

          sig { params(monthly_cost: String).void }
          attr_writer :monthly_cost

          sig { returns(T.nilable(String)) }
          attr_reader :upfront_cost

          sig { params(upfront_cost: String).void }
          attr_writer :upfront_cost

          sig do
            params(
              currency: String,
              monthly_cost: String,
              upfront_cost: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The ISO 4217 code for the currency.
            currency: nil,
            monthly_cost: nil,
            upfront_cost: nil
          )
          end

          sig do
            override.returns(
              { currency: String, monthly_cost: String, upfront_cost: String }
            )
          end
          def to_hash
          end
        end

        class Feature < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::Feature,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { params(name: String).returns(T.attached_class) }
          def self.new(name: nil)
          end

          sig { override.returns({ name: String }) }
          def to_hash
          end
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

        class RegionInformation < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :region_name

          sig { params(region_name: String).void }
          attr_writer :region_name

          sig do
            returns(
              T.nilable(
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation::RegionType::TaggedSymbol
              )
            )
          end
          attr_reader :region_type

          sig do
            params(
              region_type:
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation::RegionType::OrSymbol
            ).void
          end
          attr_writer :region_type

          sig do
            params(
              region_name: String,
              region_type:
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation::RegionType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(region_name: nil, region_type: nil)
          end

          sig do
            override.returns(
              {
                region_name: String,
                region_type:
                  Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation::RegionType::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module RegionType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation::RegionType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COUNTRY_CODE =
              T.let(
                :country_code,
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation::RegionType::TaggedSymbol
              )
            RATE_CENTER =
              T.let(
                :rate_center,
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation::RegionType::TaggedSymbol
              )
            STATE =
              T.let(
                :state,
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation::RegionType::TaggedSymbol
              )
            LOCATION =
              T.let(
                :location,
                Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation::RegionType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation::RegionType::TaggedSymbol
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
end
