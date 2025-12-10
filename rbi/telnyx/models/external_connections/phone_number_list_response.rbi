# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class PhoneNumberListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalConnections::PhoneNumberListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::ExternalConnections::ExternalConnectionPhoneNumber
              ]
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::OrHash
              ]
          ).void
        end
        attr_writer :data

        sig do
          returns(T.nilable(Telnyx::ExternalVoiceIntegrationsPaginationMeta))
        end
        attr_reader :meta

        sig do
          params(
            meta: Telnyx::ExternalVoiceIntegrationsPaginationMeta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data:
              T::Array[
                Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::OrHash
              ],
            meta: Telnyx::ExternalVoiceIntegrationsPaginationMeta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::ExternalConnections::ExternalConnectionPhoneNumber
                ],
              meta: Telnyx::ExternalVoiceIntegrationsPaginationMeta
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
