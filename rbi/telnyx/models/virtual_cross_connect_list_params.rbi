# typed: strong

module Telnyx
  module Models
    class VirtualCrossConnectListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::VirtualCrossConnectListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[network_id]
      sig { returns(T.nilable(Telnyx::VirtualCrossConnectListParams::Filter)) }
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::VirtualCrossConnectListParams::Filter::OrHash
        ).void
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
          filter: Telnyx::VirtualCrossConnectListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[network_id]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::VirtualCrossConnectListParams::Filter,
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
              Telnyx::VirtualCrossConnectListParams::Filter,
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
    end
  end
end
