# typed: strong

module Telnyx
  module Models
    module Rcs
      module Agents
        class TestDeviceResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Rcs::Agents::TestDeviceResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Rcs::Agents::TestDeviceResponse::InviteStatus::TaggedSymbol
            )
          end
          attr_accessor :invite_status

          sig { returns(String) }
          attr_accessor :phone_number

          sig { returns(String) }
          attr_accessor :test_device_id

          sig do
            params(
              invite_status:
                Telnyx::Rcs::Agents::TestDeviceResponse::InviteStatus::OrSymbol,
              phone_number: String,
              test_device_id: String
            ).returns(T.attached_class)
          end
          def self.new(invite_status:, phone_number:, test_device_id:)
          end

          sig do
            override.returns(
              {
                invite_status:
                  Telnyx::Rcs::Agents::TestDeviceResponse::InviteStatus::TaggedSymbol,
                phone_number: String,
                test_device_id: String
              }
            )
          end
          def to_hash
          end

          module InviteStatus
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Rcs::Agents::TestDeviceResponse::InviteStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :PENDING,
                Telnyx::Rcs::Agents::TestDeviceResponse::InviteStatus::TaggedSymbol
              )
            ACCEPTED =
              T.let(
                :ACCEPTED,
                Telnyx::Rcs::Agents::TestDeviceResponse::InviteStatus::TaggedSymbol
              )
            DECLINED =
              T.let(
                :DECLINED,
                Telnyx::Rcs::Agents::TestDeviceResponse::InviteStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Rcs::Agents::TestDeviceResponse::InviteStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
