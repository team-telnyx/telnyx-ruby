# typed: strong

module Telnyx
  module Models
    class IntegrationSecretListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::IntegrationSecretListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[type]
      sig { returns(T.nilable(Telnyx::IntegrationSecretListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::IntegrationSecretListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::IntegrationSecretListParams::Page)) }
      attr_reader :page

      sig do
        params(page: Telnyx::IntegrationSecretListParams::Page::OrHash).void
      end
      attr_writer :page

      sig do
        params(
          filter: Telnyx::IntegrationSecretListParams::Filter::OrHash,
          page: Telnyx::IntegrationSecretListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[type]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::IntegrationSecretListParams::Filter,
            page: Telnyx::IntegrationSecretListParams::Page,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::IntegrationSecretListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::IntegrationSecretListParams::Filter::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: Telnyx::IntegrationSecretListParams::Filter::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Consolidated filter parameter (deepObject style). Originally: filter[type]
        sig do
          params(
            type: Telnyx::IntegrationSecretListParams::Filter::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(type: nil)
        end

        sig do
          override.returns(
            {
              type: Telnyx::IntegrationSecretListParams::Filter::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::IntegrationSecretListParams::Filter::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BEARER =
            T.let(
              :bearer,
              Telnyx::IntegrationSecretListParams::Filter::Type::TaggedSymbol
            )
          BASIC =
            T.let(
              :basic,
              Telnyx::IntegrationSecretListParams::Filter::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::IntegrationSecretListParams::Filter::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::IntegrationSecretListParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(number: nil, size: nil)
        end

        sig { override.returns({ number: Integer, size: Integer }) }
        def to_hash
        end
      end
    end
  end
end
