# typed: strong

module Telnyx
  module Models
    class WirelessBlocklistValueListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WirelessBlocklistValueListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          Telnyx::Models::WirelessBlocklistValueListResponse::Data::Variants
        )
      end
      attr_accessor :data

      sig do
        params(
          data:
            Telnyx::Models::WirelessBlocklistValueListResponse::Data::Variants
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              Telnyx::Models::WirelessBlocklistValueListResponse::Data::Variants
          }
        )
      end
      def to_hash
      end

      module Data
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Array[
                Telnyx::Models::WirelessBlocklistValueListResponse::Data::Country
              ],
              T::Array[
                Telnyx::Models::WirelessBlocklistValueListResponse::Data::Mcc
              ],
              T::Array[
                Telnyx::Models::WirelessBlocklistValueListResponse::Data::Plmn
              ]
            )
          end

        class Country < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::WirelessBlocklistValueListResponse::Data::Country,
                Telnyx::Internal::AnyHash
              )
            end

          # ISO 3166-1 Alpha-2 Country Code.
          sig { returns(String) }
          attr_accessor :country_code

          sig { params(country_code: String).returns(T.attached_class) }
          def self.new(
            # ISO 3166-1 Alpha-2 Country Code.
            country_code:
          )
          end

          sig { override.returns({ country_code: String }) }
          def to_hash
          end
        end

        class Mcc < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::WirelessBlocklistValueListResponse::Data::Mcc,
                Telnyx::Internal::AnyHash
              )
            end

          # Mobile Country Code.
          sig { returns(String) }
          attr_accessor :mcc

          sig { params(mcc: String).returns(T.attached_class) }
          def self.new(
            # Mobile Country Code.
            mcc:
          )
          end

          sig { override.returns({ mcc: String }) }
          def to_hash
          end
        end

        class Plmn < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::WirelessBlocklistValueListResponse::Data::Plmn,
                Telnyx::Internal::AnyHash
              )
            end

          # Public land mobile network code (MCC + MNC).
          sig { returns(String) }
          attr_accessor :plmn

          sig { params(plmn: String).returns(T.attached_class) }
          def self.new(
            # Public land mobile network code (MCC + MNC).
            plmn:
          )
          end

          sig { override.returns({ plmn: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::WirelessBlocklistValueListResponse::Data::Variants
            ]
          )
        end
        def self.variants
        end

        CountryArray =
          T.let(
            Telnyx::Internal::Type::ArrayOf[
              Telnyx::Models::WirelessBlocklistValueListResponse::Data::Country
            ],
            Telnyx::Internal::Type::Converter
          )

        MccArray =
          T.let(
            Telnyx::Internal::Type::ArrayOf[
              Telnyx::Models::WirelessBlocklistValueListResponse::Data::Mcc
            ],
            Telnyx::Internal::Type::Converter
          )

        PlmnArray =
          T.let(
            Telnyx::Internal::Type::ArrayOf[
              Telnyx::Models::WirelessBlocklistValueListResponse::Data::Plmn
            ],
            Telnyx::Internal::Type::Converter
          )
      end
    end
  end
end
