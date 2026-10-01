# typed: strong

module Telnyx
  module Models
    EnterpriseEmailVerificationStatusWrapped =
      Enterprises::EnterpriseEmailVerificationStatusWrapped

    module Enterprises
      class EnterpriseEmailVerificationStatusWrapped < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped,
              Telnyx::Internal::AnyHash
            )
          end

        # Verification state for an enterprise account's contact email.
        sig do
          returns(
            Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Verification state for an enterprise account's contact email.
          data:
        )
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Whether the enterprise account's contact email has been confirmed.
          sig { returns(T::Boolean) }
          attr_accessor :email_verified

          # `sent` after a code is emailed; `verified` after a successful confirm.
          sig do
            returns(
              Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # Always `email_verification`.
          sig do
            returns(
              Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

          # When the code just sent stops being accepted. Present on a send response; null
          # on a confirm response.
          sig { returns(T.nilable(Time)) }
          attr_accessor :expires_at

          # How many more codes may be requested for this enterprise account today. Present
          # on a send response; null on a confirm response.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :sends_remaining_today

          # Verification state for an enterprise account's contact email.
          sig do
            params(
              email_verified: T::Boolean,
              record_type:
                Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data::RecordType::OrSymbol,
              status:
                Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data::Status::OrSymbol,
              expires_at: T.nilable(Time),
              sends_remaining_today: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether the enterprise account's contact email has been confirmed.
            email_verified:,
            # Always `email_verification`.
            record_type:,
            # `sent` after a code is emailed; `verified` after a successful confirm.
            status:,
            # When the code just sent stops being accepted. Present on a send response; null
            # on a confirm response.
            expires_at: nil,
            # How many more codes may be requested for this enterprise account today. Present
            # on a send response; null on a confirm response.
            sends_remaining_today: nil
          )
          end

          sig do
            override.returns(
              {
                email_verified: T::Boolean,
                record_type:
                  Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data::RecordType::TaggedSymbol,
                status:
                  Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data::Status::TaggedSymbol,
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
                T.all(
                  Symbol,
                  Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMAIL_VERIFICATION =
              T.let(
                :email_verification,
                Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # `sent` after a code is emailed; `verified` after a successful confirm.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SENT =
              T.let(
                :sent,
                Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data::Status::TaggedSymbol
              )
            VERIFIED =
              T.let(
                :verified,
                Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data::Status::TaggedSymbol
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
