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
          T.nilable(
            Telnyx::Models::WirelessBlocklistValueListResponse::Data::Variants
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::WirelessBlocklistValueListResponse::Data::Variants
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
            Telnyx::Models::WirelessBlocklistValueListResponse::Data::Variants,
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data:
              Telnyx::Models::WirelessBlocklistValueListResponse::Data::Variants,
            meta: Telnyx::PaginationMeta
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
          attr_accessor :code

          # The name of the country.
          sig { returns(String) }
          attr_accessor :name

          sig { params(code: String, name: String).returns(T.attached_class) }
          def self.new(
            # ISO 3166-1 Alpha-2 Country Code.
            code:,
            # The name of the country.
            name:
          )
          end

          sig { override.returns({ code: String, name: String }) }
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
          attr_accessor :code

          # The name of the country.
          sig { returns(String) }
          attr_accessor :name

          sig { params(code: String, name: String).returns(T.attached_class) }
          def self.new(
            # Mobile Country Code.
            code:,
            # The name of the country.
            name:
          )
          end

          sig { override.returns({ code: String, name: String }) }
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
          attr_accessor :code

          # The name of the network.
          sig { returns(String) }
          attr_accessor :name

          sig { params(code: String, name: String).returns(T.attached_class) }
          def self.new(
            # Public land mobile network code (MCC + MNC).
            code:,
            # The name of the network.
            name:
          )
          end

          sig { override.returns({ code: String, name: String }) }
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
