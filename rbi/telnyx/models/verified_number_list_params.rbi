# typed: strong

module Telnyx
  module Models
    class VerifiedNumberListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::VerifiedNumberListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated page parameter (deepObject style). Use page[size] and page[number]
      # in the query string. Originally: page[size], page[number]
      sig { returns(T.nilable(Telnyx::VerifiedNumberListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::VerifiedNumberListParams::Page::OrHash).void }
      attr_writer :page

      sig do
        params(
          page: Telnyx::VerifiedNumberListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated page parameter (deepObject style). Use page[size] and page[number]
        # in the query string. Originally: page[size], page[number]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            page: Telnyx::VerifiedNumberListParams::Page,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::VerifiedNumberListParams::Page,
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

        # Consolidated page parameter (deepObject style). Use page[size] and page[number]
        # in the query string. Originally: page[size], page[number]
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
