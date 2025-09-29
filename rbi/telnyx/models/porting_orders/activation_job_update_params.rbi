# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class ActivationJobUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::ActivationJobUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The desired activation time. The activation time should be between any of the
        # activation windows.
        sig { returns(T.nilable(Time)) }
        attr_reader :activate_at

        sig { params(activate_at: Time).void }
        attr_writer :activate_at

        sig do
          params(
            id: String,
            activate_at: Time,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # The desired activation time. The activation time should be between any of the
          # activation windows.
          activate_at: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              activate_at: Time,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
