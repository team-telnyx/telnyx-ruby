# typed: strong

module Telnyx
  module Models
    class NetworkListInterfacesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::NetworkListInterfacesParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[name],
      # filter[type], filter[status]
      sig { returns(T.nilable(Telnyx::NetworkListInterfacesParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::NetworkListInterfacesParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::NetworkListInterfacesParams::Page)) }
      attr_reader :page

      sig do
        params(page: Telnyx::NetworkListInterfacesParams::Page::OrHash).void
      end
      attr_writer :page

      sig do
        params(
          filter: Telnyx::NetworkListInterfacesParams::Filter::OrHash,
          page: Telnyx::NetworkListInterfacesParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[name],
        # filter[type], filter[status]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::NetworkListInterfacesParams::Filter,
            page: Telnyx::NetworkListInterfacesParams::Page,
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
              Telnyx::NetworkListInterfacesParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # The interface name to filter on.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The interface type to filter on.
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # Consolidated filter parameter (deepObject style). Originally: filter[name],
        # filter[type], filter[status]
        sig { params(name: String, type: String).returns(T.attached_class) }
        def self.new(
          # The interface name to filter on.
          name: nil,
          # The interface type to filter on.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              status: Telnyx::InterfaceStatus::OrSymbol,
              type: String
            }
          )
        end
        def to_hash
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NetworkListInterfacesParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        # The page number to load
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # The size of the page
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # The page number to load
          number: nil,
          # The size of the page
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
