# typed: strong

module Telnyx
  module Models
    class IPListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Telnyx::IPListParams, Telnyx::Internal::AnyHash) }

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[connection_id], filter[ip_address], filter[port]
      sig { returns(T.nilable(Telnyx::IPListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::IPListParams::Filter::OrHash).void }
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
          filter: Telnyx::IPListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[connection_id], filter[ip_address], filter[port]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::IPListParams::Filter,
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
            T.any(Telnyx::IPListParams::Filter, Telnyx::Internal::AnyHash)
          end

        # ID of the IP Connection to which this IP should be attached.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        # IP adddress represented by this resource.
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { params(ip_address: String).void }
        attr_writer :ip_address

        # Port to use when connecting to this IP.
        sig { returns(T.nilable(Integer)) }
        attr_reader :port

        sig { params(port: Integer).void }
        attr_writer :port

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[connection_id], filter[ip_address], filter[port]
        sig do
          params(
            connection_id: String,
            ip_address: String,
            port: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the IP Connection to which this IP should be attached.
          connection_id: nil,
          # IP adddress represented by this resource.
          ip_address: nil,
          # Port to use when connecting to this IP.
          port: nil
        )
        end

        sig do
          override.returns(
            { connection_id: String, ip_address: String, port: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
