# typed: strong

module Telnyx
  module Models
    class TelephonyCredentialListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::TelephonyCredentialListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[tag],
      # filter[name], filter[status], filter[resource_id], filter[sip_username]
      sig { returns(T.nilable(Telnyx::TelephonyCredentialListParams::Filter)) }
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::TelephonyCredentialListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::TelephonyCredentialListParams::Page)) }
      attr_reader :page

      sig do
        params(page: Telnyx::TelephonyCredentialListParams::Page::OrHash).void
      end
      attr_writer :page

      sig do
        params(
          filter: Telnyx::TelephonyCredentialListParams::Filter::OrHash,
          page: Telnyx::TelephonyCredentialListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[tag],
        # filter[name], filter[status], filter[resource_id], filter[sip_username]
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
            filter: Telnyx::TelephonyCredentialListParams::Filter,
            page: Telnyx::TelephonyCredentialListParams::Page,
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
              Telnyx::TelephonyCredentialListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by name
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Filter by resource_id
        sig { returns(T.nilable(String)) }
        attr_reader :resource_id

        sig { params(resource_id: String).void }
        attr_writer :resource_id

        # Filter by sip_username
        sig { returns(T.nilable(String)) }
        attr_reader :sip_username

        sig { params(sip_username: String).void }
        attr_writer :sip_username

        # Filter by status
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        # Filter by tag
        sig { returns(T.nilable(String)) }
        attr_reader :tag

        sig { params(tag: String).void }
        attr_writer :tag

        # Consolidated filter parameter (deepObject style). Originally: filter[tag],
        # filter[name], filter[status], filter[resource_id], filter[sip_username]
        sig do
          params(
            name: String,
            resource_id: String,
            sip_username: String,
            status: String,
            tag: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by name
          name: nil,
          # Filter by resource_id
          resource_id: nil,
          # Filter by sip_username
          sip_username: nil,
          # Filter by status
          status: nil,
          # Filter by tag
          tag: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              resource_id: String,
              sip_username: String,
              status: String,
              tag: String
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
              Telnyx::TelephonyCredentialListParams::Page,
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
