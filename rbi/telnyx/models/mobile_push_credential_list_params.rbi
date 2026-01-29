# typed: strong

module Telnyx
  module Models
    class MobilePushCredentialListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MobilePushCredentialListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[type],
      # filter[alias]
      sig { returns(T.nilable(Telnyx::MobilePushCredentialListParams::Filter)) }
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::MobilePushCredentialListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::MobilePushCredentialListParams::Page)) }
      attr_reader :page

      sig do
        params(page: Telnyx::MobilePushCredentialListParams::Page::OrHash).void
      end
      attr_writer :page

      sig do
        params(
          filter: Telnyx::MobilePushCredentialListParams::Filter::OrHash,
          page: Telnyx::MobilePushCredentialListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[type],
        # filter[alias]
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
            filter: Telnyx::MobilePushCredentialListParams::Filter,
            page: Telnyx::MobilePushCredentialListParams::Page,
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
              Telnyx::MobilePushCredentialListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique mobile push credential alias
        sig { returns(T.nilable(String)) }
        attr_reader :alias_

        sig { params(alias_: String).void }
        attr_writer :alias_

        # type of mobile push credentials
        sig do
          returns(
            T.nilable(
              Telnyx::MobilePushCredentialListParams::Filter::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: Telnyx::MobilePushCredentialListParams::Filter::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Consolidated filter parameter (deepObject style). Originally: filter[type],
        # filter[alias]
        sig do
          params(
            alias_: String,
            type: Telnyx::MobilePushCredentialListParams::Filter::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique mobile push credential alias
          alias_: nil,
          # type of mobile push credentials
          type: nil
        )
        end

        sig do
          override.returns(
            {
              alias_: String,
              type:
                Telnyx::MobilePushCredentialListParams::Filter::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # type of mobile push credentials
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MobilePushCredentialListParams::Filter::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IOS =
            T.let(
              :ios,
              Telnyx::MobilePushCredentialListParams::Filter::Type::TaggedSymbol
            )
          ANDROID =
            T.let(
              :android,
              Telnyx::MobilePushCredentialListParams::Filter::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MobilePushCredentialListParams::Filter::Type::TaggedSymbol
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
              Telnyx::MobilePushCredentialListParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        # The page number to load.
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # The size of the page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # The page number to load.
          number: nil,
          # The size of the page.
          size: nil
        )
        end

        sig { override.returns({ number: Integer, size: Integer }) }
        def to_hash
        end
      end
    end
  end
end
