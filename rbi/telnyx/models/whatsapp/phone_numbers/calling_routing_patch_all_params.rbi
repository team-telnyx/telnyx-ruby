# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        class CallingRoutingPatchAllParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Whatsapp::PhoneNumbers::CallingRoutingPatchAllParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # ID of the connection to deliver inbound WhatsApp calls to: a positive integer up
          # to 9223372036854775807, sent as a decimal string or an integer. Send a string to
          # keep large IDs exact. Non-null values are returned as strings. `null` clears the
          # routing.
          sig do
            returns(
              T.nilable(
                Telnyx::Whatsapp::PhoneNumbers::CallingRoutingPatchAllParams::ConnectionID::Variants
              )
            )
          end
          attr_accessor :connection_id

          sig do
            params(
              id: String,
              connection_id:
                T.nilable(
                  Telnyx::Whatsapp::PhoneNumbers::CallingRoutingPatchAllParams::ConnectionID::Variants
                ),
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # ID of the connection to deliver inbound WhatsApp calls to: a positive integer up
            # to 9223372036854775807, sent as a decimal string or an integer. Send a string to
            # keep large IDs exact. Non-null values are returned as strings. `null` clears the
            # routing.
            connection_id:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                connection_id:
                  T.nilable(
                    Telnyx::Whatsapp::PhoneNumbers::CallingRoutingPatchAllParams::ConnectionID::Variants
                  ),
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          # ID of the connection to deliver inbound WhatsApp calls to: a positive integer up
          # to 9223372036854775807, sent as a decimal string or an integer. Send a string to
          # keep large IDs exact. Non-null values are returned as strings. `null` clears the
          # routing.
          module ConnectionID
            extend Telnyx::Internal::Type::Union

            Variants = T.type_alias { T.any(String, Integer) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::Whatsapp::PhoneNumbers::CallingRoutingPatchAllParams::ConnectionID::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
