# typed: strong

module Telnyx
  module Models
    class SimCardGroupCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SimCardGroupCreateParams, Telnyx::Internal::AnyHash)
        end

      # A user friendly name for the SIM card group.
      sig { returns(String) }
      attr_accessor :name

      # Upper limit on the amount of data the SIM cards, within the group, can use.
      sig { returns(T.nilable(Telnyx::SimCardGroupCreateParams::DataLimit)) }
      attr_reader :data_limit

      sig do
        params(
          data_limit: Telnyx::SimCardGroupCreateParams::DataLimit::OrHash
        ).void
      end
      attr_writer :data_limit

      sig do
        params(
          name: String,
          data_limit: Telnyx::SimCardGroupCreateParams::DataLimit::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A user friendly name for the SIM card group.
        name:,
        # Upper limit on the amount of data the SIM cards, within the group, can use.
        data_limit: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            data_limit: Telnyx::SimCardGroupCreateParams::DataLimit,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class DataLimit < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCardGroupCreateParams::DataLimit,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :amount

        sig { params(amount: String).void }
        attr_writer :amount

        sig { returns(T.nilable(String)) }
        attr_reader :unit

        sig { params(unit: String).void }
        attr_writer :unit

        # Upper limit on the amount of data the SIM cards, within the group, can use.
        sig { params(amount: String, unit: String).returns(T.attached_class) }
        def self.new(amount: nil, unit: nil)
        end

        sig { override.returns({ amount: String, unit: String }) }
        def to_hash
        end
      end
    end
  end
end
