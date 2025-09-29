# typed: strong

module Telnyx
  module Models
    class InventoryCoverageListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::InventoryCoverageListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::InventoryCoverageListResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::InventoryCoverageListResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        returns(T.nilable(Telnyx::Models::InventoryCoverageListResponse::Meta))
      end
      attr_reader :meta

      sig do
        params(
          meta: Telnyx::Models::InventoryCoverageListResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::InventoryCoverageListResponse::Data::OrHash
            ],
          meta: Telnyx::Models::InventoryCoverageListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::InventoryCoverageListResponse::Data],
            meta: Telnyx::Models::InventoryCoverageListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::InventoryCoverageListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :administrative_area

        sig { params(administrative_area: String).void }
        attr_writer :administrative_area

        # Indicates if the phone number requires advance requirements.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :advance_requirements

        sig { params(advance_requirements: T::Boolean).void }
        attr_writer :advance_requirements

        sig { returns(T.nilable(Integer)) }
        attr_reader :count

        sig { params(count: Integer).void }
        attr_writer :count

        sig do
          returns(
            T.nilable(
              Telnyx::Models::InventoryCoverageListResponse::Data::CoverageType::TaggedSymbol
            )
          )
        end
        attr_reader :coverage_type

        sig do
          params(
            coverage_type:
              Telnyx::Models::InventoryCoverageListResponse::Data::CoverageType::OrSymbol
          ).void
        end
        attr_writer :coverage_type

        sig { returns(T.nilable(String)) }
        attr_reader :group

        sig { params(group: String).void }
        attr_writer :group

        sig { returns(T.nilable(String)) }
        attr_reader :group_type

        sig { params(group_type: String).void }
        attr_writer :group_type

        sig { returns(T.nilable(Integer)) }
        attr_reader :number_range

        sig { params(number_range: Integer).void }
        attr_writer :number_range

        sig do
          returns(
            T.nilable(
              Telnyx::Models::InventoryCoverageListResponse::Data::NumberType::TaggedSymbol
            )
          )
        end
        attr_reader :number_type

        sig do
          params(
            number_type:
              Telnyx::Models::InventoryCoverageListResponse::Data::NumberType::OrSymbol
          ).void
        end
        attr_writer :number_type

        sig do
          returns(
            T.nilable(
              Telnyx::Models::InventoryCoverageListResponse::Data::PhoneNumberType::TaggedSymbol
            )
          )
        end
        attr_reader :phone_number_type

        sig do
          params(
            phone_number_type:
              Telnyx::Models::InventoryCoverageListResponse::Data::PhoneNumberType::OrSymbol
          ).void
        end
        attr_writer :phone_number_type

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            administrative_area: String,
            advance_requirements: T::Boolean,
            count: Integer,
            coverage_type:
              Telnyx::Models::InventoryCoverageListResponse::Data::CoverageType::OrSymbol,
            group: String,
            group_type: String,
            number_range: Integer,
            number_type:
              Telnyx::Models::InventoryCoverageListResponse::Data::NumberType::OrSymbol,
            phone_number_type:
              Telnyx::Models::InventoryCoverageListResponse::Data::PhoneNumberType::OrSymbol,
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          administrative_area: nil,
          # Indicates if the phone number requires advance requirements.
          advance_requirements: nil,
          count: nil,
          coverage_type: nil,
          group: nil,
          group_type: nil,
          number_range: nil,
          number_type: nil,
          phone_number_type: nil,
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              administrative_area: String,
              advance_requirements: T::Boolean,
              count: Integer,
              coverage_type:
                Telnyx::Models::InventoryCoverageListResponse::Data::CoverageType::TaggedSymbol,
              group: String,
              group_type: String,
              number_range: Integer,
              number_type:
                Telnyx::Models::InventoryCoverageListResponse::Data::NumberType::TaggedSymbol,
              phone_number_type:
                Telnyx::Models::InventoryCoverageListResponse::Data::PhoneNumberType::TaggedSymbol,
              record_type: String
            }
          )
        end
        def to_hash
        end

        module CoverageType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::InventoryCoverageListResponse::Data::CoverageType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUMBER =
            T.let(
              :number,
              Telnyx::Models::InventoryCoverageListResponse::Data::CoverageType::TaggedSymbol
            )
          BLOCK =
            T.let(
              :block,
              Telnyx::Models::InventoryCoverageListResponse::Data::CoverageType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::InventoryCoverageListResponse::Data::CoverageType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module NumberType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::InventoryCoverageListResponse::Data::NumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DID =
            T.let(
              :did,
              Telnyx::Models::InventoryCoverageListResponse::Data::NumberType::TaggedSymbol
            )
          TOLL_FREE =
            T.let(
              :"toll-free",
              Telnyx::Models::InventoryCoverageListResponse::Data::NumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::InventoryCoverageListResponse::Data::NumberType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::InventoryCoverageListResponse::Data::PhoneNumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOCAL =
            T.let(
              :local,
              Telnyx::Models::InventoryCoverageListResponse::Data::PhoneNumberType::TaggedSymbol
            )
          TOLL_FREE =
            T.let(
              :toll_free,
              Telnyx::Models::InventoryCoverageListResponse::Data::PhoneNumberType::TaggedSymbol
            )
          NATIONAL =
            T.let(
              :national,
              Telnyx::Models::InventoryCoverageListResponse::Data::PhoneNumberType::TaggedSymbol
            )
          LANDLINE =
            T.let(
              :landline,
              Telnyx::Models::InventoryCoverageListResponse::Data::PhoneNumberType::TaggedSymbol
            )
          SHARED_COST =
            T.let(
              :shared_cost,
              Telnyx::Models::InventoryCoverageListResponse::Data::PhoneNumberType::TaggedSymbol
            )
          MOBILE =
            T.let(
              :mobile,
              Telnyx::Models::InventoryCoverageListResponse::Data::PhoneNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::InventoryCoverageListResponse::Data::PhoneNumberType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::InventoryCoverageListResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_results

        sig { params(total_results: Integer).void }
        attr_writer :total_results

        sig { params(total_results: Integer).returns(T.attached_class) }
        def self.new(total_results: nil)
        end

        sig { override.returns({ total_results: Integer }) }
        def to_hash
        end
      end
    end
  end
end
