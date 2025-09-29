# typed: strong

module Telnyx
  module Models
    class ListRetrieveByZoneResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ListRetrieveByZoneResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(T::Array[Telnyx::Models::ListRetrieveByZoneResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[Telnyx::Models::ListRetrieveByZoneResponse::Data::OrHash]
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
            T::Array[Telnyx::Models::ListRetrieveByZoneResponse::Data::OrHash],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::ListRetrieveByZoneResponse::Data],
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
              Telnyx::Models::ListRetrieveByZoneResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :number_of_channels

        sig { params(number_of_channels: Integer).void }
        attr_writer :number_of_channels

        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Models::ListRetrieveByZoneResponse::Data::Number]
            )
          )
        end
        attr_reader :numbers

        sig do
          params(
            numbers:
              T::Array[
                Telnyx::Models::ListRetrieveByZoneResponse::Data::Number::OrHash
              ]
          ).void
        end
        attr_writer :numbers

        sig { returns(T.nilable(String)) }
        attr_reader :zone_id

        sig { params(zone_id: String).void }
        attr_writer :zone_id

        sig { returns(T.nilable(String)) }
        attr_reader :zone_name

        sig { params(zone_name: String).void }
        attr_writer :zone_name

        sig do
          params(
            number_of_channels: Integer,
            numbers:
              T::Array[
                Telnyx::Models::ListRetrieveByZoneResponse::Data::Number::OrHash
              ],
            zone_id: String,
            zone_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          number_of_channels: nil,
          numbers: nil,
          zone_id: nil,
          zone_name: nil
        )
        end

        sig do
          override.returns(
            {
              number_of_channels: Integer,
              numbers:
                T::Array[
                  Telnyx::Models::ListRetrieveByZoneResponse::Data::Number
                ],
              zone_id: String,
              zone_name: String
            }
          )
        end
        def to_hash
        end

        class Number < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ListRetrieveByZoneResponse::Data::Number,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :country

          sig { params(country: String).void }
          attr_writer :country

          sig { returns(T.nilable(String)) }
          attr_reader :number

          sig { params(number: String).void }
          attr_writer :number

          sig do
            params(country: String, number: String).returns(T.attached_class)
          end
          def self.new(country: nil, number: nil)
          end

          sig { override.returns({ country: String, number: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
