# typed: strong

module Telnyx
  module Models
    class TrafficPolicyProfileListServicesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::TrafficPolicyProfileListServicesParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Filter services by group.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_group

      sig { params(filter_group: String).void }
      attr_writer :filter_group

      # Filter services by name.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_name

      sig { params(filter_name: String).void }
      attr_writer :filter_name

      # The page number to load.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # The size of the page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter_group: String,
          filter_name: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter services by group.
        filter_group: nil,
        # Filter services by name.
        filter_name: nil,
        # The page number to load.
        page_number: nil,
        # The size of the page.
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter_group: String,
            filter_name: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
