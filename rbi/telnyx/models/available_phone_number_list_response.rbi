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

      sig do
        returns(
          T.nilable(Telnyx::Models::AvailablePhoneNumberListResponse::Meta)
        )
      end
      attr_reader :meta

      sig do
        params(
          meta: Telnyx::Models::AvailablePhoneNumberListResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        returns(
          T.nilable(Telnyx::Models::AvailablePhoneNumberListResponse::Metadata)
        )
      end
      attr_reader :metadata

      sig do
        params(
          metadata:
            Telnyx::Models::AvailablePhoneNumberListResponse::Metadata::OrHash
        ).void
      end
      attr_writer :metadata

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::AvailablePhoneNumberListResponse::Data::OrHash
            ],
          meta: Telnyx::Models::AvailablePhoneNumberListResponse::Meta::OrHash,
          metadata:
            Telnyx::Models::AvailablePhoneNumberListResponse::Metadata::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil, metadata: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[Telnyx::Models::AvailablePhoneNumberListResponse::Data],
            meta: Telnyx::Models::AvailablePhoneNumberListResponse::Meta,
            metadata: Telnyx::Models::AvailablePhoneNumberListResponse::Metadata
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

        sig do
          returns(
            T.nilable(
              Telnyx::Models::AvailablePhoneNumberListResponse::Data::CostInformation
            )
          )
        end
        attr_reader :cost_information

        sig do
          params(
            cost_information:
              Telnyx::Models::AvailablePhoneNumberListResponse::Data::CostInformation::OrHash
          ).void
        end
        attr_writer :cost_information

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::Feature
              ]
            )
          )
        end
        attr_reader :features

        sig do
          params(
            features:
              T::Array[
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::Feature::OrHash
              ]
          ).void
        end
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

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation
              ]
            )
          )
        end
        attr_reader :region_information

        sig do
          params(
            region_information:
              T::Array[
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation::OrHash
              ]
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
            cost_information:
              Telnyx::Models::AvailablePhoneNumberListResponse::Data::CostInformation::OrHash,
            features:
              T::Array[
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::Feature::OrHash
              ],
            phone_number: String,
            quickship: T::Boolean,
            record_type:
              Telnyx::Models::AvailablePhoneNumberListResponse::Data::RecordType::OrSymbol,
            region_information:
              T::Array[
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation::OrHash
              ],
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
              cost_information:
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::CostInformation,
              features:
                T::Array[
                  Telnyx::Models::AvailablePhoneNumberListResponse::Data::Feature
                ],
              phone_number: String,
              quickship: T::Boolean,
              record_type:
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::RecordType::TaggedSymbol,
              region_information:
                T::Array[
                  Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation
                ],
              reservable: T::Boolean,
              vanity_format: String
            }
          )
        end
        def to_hash
        end

        class CostInformation < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::CostInformation,
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
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::Feature,
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

        class RegionInformation < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation,
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
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation::RegionType::TaggedSymbol
              )
            )
          end
          attr_reader :region_type

          sig do
            params(
              region_type:
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation::RegionType::OrSymbol
            ).void
          end
          attr_writer :region_type

          sig do
            params(
              region_name: String,
              region_type:
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation::RegionType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(region_name: nil, region_type: nil)
          end

          sig do
            override.returns(
              {
                region_name: String,
                region_type:
                  Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation::RegionType::TaggedSymbol
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
                  Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation::RegionType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COUNTRY_CODE =
              T.let(
                :country_code,
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation::RegionType::TaggedSymbol
              )
            RATE_CENTER =
              T.let(
                :rate_center,
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation::RegionType::TaggedSymbol
              )
            STATE =
              T.let(
                :state,
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation::RegionType::TaggedSymbol
              )
            LOCATION =
              T.let(
                :location,
                Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation::RegionType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation::RegionType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AvailablePhoneNumberListResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :best_effort_results

        sig { params(best_effort_results: Integer).void }
        attr_writer :best_effort_results

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_results

        sig { params(total_results: Integer).void }
        attr_writer :total_results

        sig do
          params(best_effort_results: Integer, total_results: Integer).returns(
            T.attached_class
          )
        end
        def self.new(best_effort_results: nil, total_results: nil)
        end

        sig do
          override.returns(
            { best_effort_results: Integer, total_results: Integer }
          )
        end
        def to_hash
        end
      end

      class Metadata < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AvailablePhoneNumberListResponse::Metadata,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :best_effort_results

        sig { params(best_effort_results: Integer).void }
        attr_writer :best_effort_results

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_results

        sig { params(total_results: Integer).void }
        attr_writer :total_results

        sig do
          params(best_effort_results: Integer, total_results: Integer).returns(
            T.attached_class
          )
        end
        def self.new(best_effort_results: nil, total_results: nil)
        end

        sig do
          override.returns(
            { best_effort_results: Integer, total_results: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
