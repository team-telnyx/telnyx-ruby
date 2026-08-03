# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class EmailMessageResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailInboxes::EmailMessageResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::EmailInboxes::EmailMessage) }
        attr_reader :data

        sig { params(data: Telnyx::EmailInboxes::EmailMessage::OrHash).void }
        attr_writer :data

        # Recipients removed by suppression checks when at least one recipient remains and
        # the message is accepted.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::EmailInboxes::EmailMessageResponse::Suppressed]
            )
          )
        end
        attr_reader :suppressed

        sig do
          params(
            suppressed:
              T::Array[
                Telnyx::EmailInboxes::EmailMessageResponse::Suppressed::OrHash
              ]
          ).void
        end
        attr_writer :suppressed

        sig do
          params(
            data: Telnyx::EmailInboxes::EmailMessage::OrHash,
            suppressed:
              T::Array[
                Telnyx::EmailInboxes::EmailMessageResponse::Suppressed::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          data:,
          # Recipients removed by suppression checks when at least one recipient remains and
          # the message is accepted.
          suppressed: nil
        )
        end

        sig do
          override.returns(
            {
              data: Telnyx::EmailInboxes::EmailMessage,
              suppressed:
                T::Array[Telnyx::EmailInboxes::EmailMessageResponse::Suppressed]
            }
          )
        end
        def to_hash
        end

        class Suppressed < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::EmailInboxes::EmailMessageResponse::Suppressed,
                Telnyx::Internal::AnyHash
              )
            end

          # Whether an authorized send may override this suppression.
          sig { returns(T::Boolean) }
          attr_accessor :override_allowed

          # Suppression reason returned by the recipient suppression service.
          sig { returns(String) }
          attr_accessor :reason

          # Scope at which the suppression applies.
          sig { returns(String) }
          attr_accessor :scope

          # Suppressed recipient email address.
          sig { returns(String) }
          attr_accessor :to

          sig do
            params(
              override_allowed: T::Boolean,
              reason: String,
              scope: String,
              to: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether an authorized send may override this suppression.
            override_allowed:,
            # Suppression reason returned by the recipient suppression service.
            reason:,
            # Scope at which the suppression applies.
            scope:,
            # Suppressed recipient email address.
            to:
          )
          end

          sig do
            override.returns(
              {
                override_allowed: T::Boolean,
                reason: String,
                scope: String,
                to: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
