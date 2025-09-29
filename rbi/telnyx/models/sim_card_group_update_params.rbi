# typed: strong

module Telnyx
  module Models
    class SimCardGroupUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SimCardGroupUpdateParams, Telnyx::Internal::AnyHash)
        end

      # Upper limit on the amount of data the SIM cards, within the group, can use.
      sig { returns(T.nilable(Telnyx::SimCardGroupUpdateParams::DataLimit)) }
      attr_reader :data_limit

      sig do
        params(
          data_limit: Telnyx::SimCardGroupUpdateParams::DataLimit::OrHash
        ).void
      end
      attr_writer :data_limit

      # A user friendly name for the SIM card group.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          data_limit: Telnyx::SimCardGroupUpdateParams::DataLimit::OrHash,
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Upper limit on the amount of data the SIM cards, within the group, can use.
        data_limit: nil,
        # A user friendly name for the SIM card group.
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            data_limit: Telnyx::SimCardGroupUpdateParams::DataLimit,
            name: String,
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
              Telnyx::SimCardGroupUpdateParams::DataLimit,
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
