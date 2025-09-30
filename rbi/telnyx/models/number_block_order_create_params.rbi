# typed: strong

module Telnyx
  module Models
    class NumberBlockOrderCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::NumberBlockOrderCreateParams, Telnyx::Internal::AnyHash)
        end

      # The phone number range included in the block.
      sig { returns(Integer) }
      attr_accessor :range

      # Starting phone number block
      sig { returns(String) }
      attr_accessor :starting_number

      # Identifies the connection associated with this phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      # A customer reference string for customer look ups.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      # Identifies the messaging profile associated with the phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :messaging_profile_id

      sig { params(messaging_profile_id: String).void }
      attr_writer :messaging_profile_id

      sig do
        params(
          range: Integer,
          starting_number: String,
          connection_id: String,
          customer_reference: String,
          messaging_profile_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The phone number range included in the block.
        range:,
        # Starting phone number block
        starting_number:,
        # Identifies the connection associated with this phone number.
        connection_id: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # Identifies the messaging profile associated with the phone number.
        messaging_profile_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            range: Integer,
            starting_number: String,
            connection_id: String,
            customer_reference: String,
            messaging_profile_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
