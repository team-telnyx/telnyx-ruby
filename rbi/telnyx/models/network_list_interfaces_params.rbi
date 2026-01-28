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

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter: Telnyx::NetworkListInterfacesParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[name],
        # filter[type], filter[status]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::NetworkListInterfacesParams::Filter,
            page_number: Integer,
            page_size: Integer,
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
    end
  end
end
