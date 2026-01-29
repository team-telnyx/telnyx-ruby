# typed: strong

module Telnyx
  module Models
    class WireguardInterfaceListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::WireguardInterfaceListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[network_id]
      sig { returns(T.nilable(Telnyx::WireguardInterfaceListParams::Filter)) }
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::WireguardInterfaceListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::WireguardInterfaceListParams::Page)) }
      attr_reader :page

      sig do
        params(page: Telnyx::WireguardInterfaceListParams::Page::OrHash).void
      end
      attr_writer :page

      sig do
        params(
          filter: Telnyx::WireguardInterfaceListParams::Filter::OrHash,
          page: Telnyx::WireguardInterfaceListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[network_id]
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
            filter: Telnyx::WireguardInterfaceListParams::Filter,
            page: Telnyx::WireguardInterfaceListParams::Page,
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
              Telnyx::WireguardInterfaceListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # The associated network id to filter on.
        sig { returns(T.nilable(String)) }
        attr_reader :network_id

        sig { params(network_id: String).void }
        attr_writer :network_id

        # Consolidated filter parameter (deepObject style). Originally: filter[network_id]
        sig { params(network_id: String).returns(T.attached_class) }
        def self.new(
          # The associated network id to filter on.
          network_id: nil
        )
        end

        sig { override.returns({ network_id: String }) }
        def to_hash
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WireguardInterfaceListParams::Page,
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
