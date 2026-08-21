# typed: strong

module Telnyx
  module Models
    module Dir
      class EmailVerificationStatus < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Dir::EmailVerificationStatus,
              Telnyx::Internal::AnyHash
            )
          end

        # Whether the DIR's authorizer email has been confirmed.
        sig { returns(T::Boolean) }
        attr_accessor :email_verified

        # `sent` after a code is emailed; `verified` after a successful confirm;
        # `unverified` when no verification is in progress.
        sig do
          returns(Telnyx::Dir::EmailVerificationStatus::Status::TaggedSymbol)
        end
        attr_accessor :status

        # Always `email_verification`.
        sig do
          returns(
            Telnyx::Dir::EmailVerificationStatus::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        # When the outstanding code stops being accepted. Null when no verification is in
        # progress.
        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        # How many more codes may be requested for this DIR today. Null when the daily cap
        # does not apply.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :sends_remaining_today

        # Verification state for a DIR's authorizer email.
        sig do
          params(
            email_verified: T::Boolean,
            record_type:
              Telnyx::Dir::EmailVerificationStatus::RecordType::OrSymbol,
            status: Telnyx::Dir::EmailVerificationStatus::Status::OrSymbol,
            expires_at: T.nilable(Time),
            sends_remaining_today: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the DIR's authorizer email has been confirmed.
          email_verified:,
          # Always `email_verification`.
          record_type:,
          # `sent` after a code is emailed; `verified` after a successful confirm;
          # `unverified` when no verification is in progress.
          status:,
          # When the outstanding code stops being accepted. Null when no verification is in
          # progress.
          expires_at: nil,
          # How many more codes may be requested for this DIR today. Null when the daily cap
          # does not apply.
          sends_remaining_today: nil
        )
        end

        sig do
          override.returns(
            {
              email_verified: T::Boolean,
              record_type:
                Telnyx::Dir::EmailVerificationStatus::RecordType::TaggedSymbol,
              status:
                Telnyx::Dir::EmailVerificationStatus::Status::TaggedSymbol,
              expires_at: T.nilable(Time),
              sends_remaining_today: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end

        # Always `email_verification`.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Dir::EmailVerificationStatus::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_VERIFICATION =
            T.let(
              :email_verification,
              Telnyx::Dir::EmailVerificationStatus::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Dir::EmailVerificationStatus::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # `sent` after a code is emailed; `verified` after a successful confirm;
        # `unverified` when no verification is in progress.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Dir::EmailVerificationStatus::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SENT =
            T.let(
              :sent,
              Telnyx::Dir::EmailVerificationStatus::Status::TaggedSymbol
            )
          VERIFIED =
            T.let(
              :verified,
              Telnyx::Dir::EmailVerificationStatus::Status::TaggedSymbol
            )
          UNVERIFIED =
            T.let(
              :unverified,
              Telnyx::Dir::EmailVerificationStatus::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Dir::EmailVerificationStatus::Status::TaggedSymbol
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
