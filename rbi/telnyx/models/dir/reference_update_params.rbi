# typed: strong

module Telnyx
  module Models
    module Dir
      class ReferenceUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Dir::ReferenceUpdateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :dir_id

        sig { returns(Telnyx::Dir::ReferenceUpdateParams::RefType::OrSymbol) }
        attr_accessor :ref_type

        sig { returns(Integer) }
        attr_accessor :slot

        # The reference's email address. We email them scheduling and dial-in instructions
        # before we call, so use an address they check.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # The full name of the person we should contact as your reference.
        sig { returns(T.nilable(String)) }
        attr_reader :full_name

        sig { params(full_name: String).void }
        attr_writer :full_name

        # The reference contact's job title, for example CFO or Owner.
        sig { returns(T.nilable(String)) }
        attr_accessor :job_title

        # The name of the organization the reference contact works for.
        sig { returns(T.nilable(String)) }
        attr_accessor :organization

        # The reference's phone number in E.164 format, for example +14155550123. We call
        # this number during their local business hours.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_e164

        sig { params(phone_e164: String).void }
        attr_writer :phone_e164

        # How the reference contact is related to the registering business.
        sig { returns(T.nilable(String)) }
        attr_accessor :relationship_to_registrant

        # The reference's IANA time zone, for example America/New_York. We only call
        # during their local 8am to 9pm hours, which is why we need it.
        sig { returns(T.nilable(String)) }
        attr_reader :timezone

        sig { params(timezone: String).void }
        attr_writer :timezone

        sig do
          params(
            dir_id: String,
            ref_type: Telnyx::Dir::ReferenceUpdateParams::RefType::OrSymbol,
            slot: Integer,
            email: String,
            full_name: String,
            job_title: T.nilable(String),
            organization: T.nilable(String),
            phone_e164: String,
            relationship_to_registrant: T.nilable(String),
            timezone: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          dir_id:,
          ref_type:,
          slot:,
          # The reference's email address. We email them scheduling and dial-in instructions
          # before we call, so use an address they check.
          email: nil,
          # The full name of the person we should contact as your reference.
          full_name: nil,
          # The reference contact's job title, for example CFO or Owner.
          job_title: nil,
          # The name of the organization the reference contact works for.
          organization: nil,
          # The reference's phone number in E.164 format, for example +14155550123. We call
          # this number during their local business hours.
          phone_e164: nil,
          # How the reference contact is related to the registering business.
          relationship_to_registrant: nil,
          # The reference's IANA time zone, for example America/New_York. We only call
          # during their local 8am to 9pm hours, which is why we need it.
          timezone: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              dir_id: String,
              ref_type: Telnyx::Dir::ReferenceUpdateParams::RefType::OrSymbol,
              slot: Integer,
              email: String,
              full_name: String,
              job_title: T.nilable(String),
              organization: T.nilable(String),
              phone_e164: String,
              relationship_to_registrant: T.nilable(String),
              timezone: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        module RefType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Dir::ReferenceUpdateParams::RefType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS =
            T.let(
              :business,
              Telnyx::Dir::ReferenceUpdateParams::RefType::TaggedSymbol
            )
          FINANCIAL =
            T.let(
              :financial,
              Telnyx::Dir::ReferenceUpdateParams::RefType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Dir::ReferenceUpdateParams::RefType::TaggedSymbol
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
