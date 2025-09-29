# typed: strong

module Telnyx
  module Models
    class UserTagListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::UserTagListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[starts_with]
      sig { returns(T.nilable(Telnyx::UserTagListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::UserTagListParams::Filter::OrHash).void }
      attr_writer :filter

      sig do
        params(
          filter: Telnyx::UserTagListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[starts_with]
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::UserTagListParams::Filter,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::UserTagListParams::Filter, Telnyx::Internal::AnyHash)
          end

        # Filter tags by prefix
        sig { returns(T.nilable(String)) }
        attr_reader :starts_with

        sig { params(starts_with: String).void }
        attr_writer :starts_with

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[starts_with]
        sig { params(starts_with: String).returns(T.attached_class) }
        def self.new(
          # Filter tags by prefix
          starts_with: nil
        )
        end

        sig { override.returns({ starts_with: String }) }
        def to_hash
        end
      end
    end
  end
end
