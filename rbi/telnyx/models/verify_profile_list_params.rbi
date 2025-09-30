# typed: strong

module Telnyx
  module Models
    class VerifyProfileListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::VerifyProfileListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[name]
      sig { returns(T.nilable(Telnyx::VerifyProfileListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::VerifyProfileListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::VerifyProfileListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::VerifyProfileListParams::Page::OrHash).void }
      attr_writer :page

      sig do
        params(
          filter: Telnyx::VerifyProfileListParams::Filter::OrHash,
          page: Telnyx::VerifyProfileListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[name]
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
            filter: Telnyx::VerifyProfileListParams::Filter,
            page: Telnyx::VerifyProfileListParams::Page,
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
              Telnyx::VerifyProfileListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Optional filter for profile names.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Consolidated filter parameter (deepObject style). Originally: filter[name]
        sig { params(name: String).returns(T.attached_class) }
        def self.new(
          # Optional filter for profile names.
          name: nil
        )
        end

        sig { override.returns({ name: String }) }
        def to_hash
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::VerifyProfileListParams::Page,
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
