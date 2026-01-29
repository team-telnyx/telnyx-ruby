# typed: strong

module Telnyx
  module Models
    class FqdnListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::FqdnListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[connection_id], filter[fqdn], filter[port], filter[dns_record_type]
      sig { returns(T.nilable(Telnyx::FqdnListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::FqdnListParams::Filter::OrHash).void }
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
          filter: Telnyx::FqdnListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[connection_id], filter[fqdn], filter[port], filter[dns_record_type]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::FqdnListParams::Filter,
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
            T.any(Telnyx::FqdnListParams::Filter, Telnyx::Internal::AnyHash)
          end

        # ID of the FQDN connection to which the FQDN belongs.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        # DNS record type used by the FQDN.
        sig { returns(T.nilable(String)) }
        attr_reader :dns_record_type

        sig { params(dns_record_type: String).void }
        attr_writer :dns_record_type

        # FQDN represented by the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :fqdn

        sig { params(fqdn: String).void }
        attr_writer :fqdn

        # Port to use when connecting to the FQDN.
        sig { returns(T.nilable(Integer)) }
        attr_reader :port

        sig { params(port: Integer).void }
        attr_writer :port

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[connection_id], filter[fqdn], filter[port], filter[dns_record_type]
        sig do
          params(
            connection_id: String,
            dns_record_type: String,
            fqdn: String,
            port: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the FQDN connection to which the FQDN belongs.
          connection_id: nil,
          # DNS record type used by the FQDN.
          dns_record_type: nil,
          # FQDN represented by the resource.
          fqdn: nil,
          # Port to use when connecting to the FQDN.
          port: nil
        )
        end

        sig do
          override.returns(
            {
              connection_id: String,
              dns_record_type: String,
              fqdn: String,
              port: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
