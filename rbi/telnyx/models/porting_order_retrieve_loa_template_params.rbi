# typed: strong

module Telnyx
  module Models
    class PortingOrderRetrieveLoaTemplateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PortingOrderRetrieveLoaTemplateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The identifier of the LOA configuration to use for the template. If not
      # provided, the default LOA configuration will be used.
      sig { returns(T.nilable(String)) }
      attr_reader :loa_configuration_id

      sig { params(loa_configuration_id: String).void }
      attr_writer :loa_configuration_id

      sig do
        params(
          loa_configuration_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The identifier of the LOA configuration to use for the template. If not
        # provided, the default LOA configuration will be used.
        loa_configuration_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            loa_configuration_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
