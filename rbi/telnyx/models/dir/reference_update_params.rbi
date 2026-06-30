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

        # Reference contact email address.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # Full name of the reference contact.
        sig { returns(T.nilable(String)) }
        attr_reader :full_name

        sig { params(full_name: String).void }
        attr_writer :full_name

        # Job title of the reference contact.
        sig { returns(T.nilable(String)) }
        attr_accessor :job_title

        # Organization the reference contact belongs to.
        sig { returns(T.nilable(String)) }
        attr_accessor :organization

        # Reference phone number in E.164 format.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_e164

        sig { params(phone_e164: String).void }
        attr_writer :phone_e164

        # How the reference contact is related to the registering business.
        sig { returns(T.nilable(String)) }
        attr_accessor :relationship_to_registrant

        # IANA timezone id for the reference.
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
          # Reference contact email address.
          email: nil,
          # Full name of the reference contact.
          full_name: nil,
          # Job title of the reference contact.
          job_title: nil,
          # Organization the reference contact belongs to.
          organization: nil,
          # Reference phone number in E.164 format.
          phone_e164: nil,
          # How the reference contact is related to the registering business.
          relationship_to_registrant: nil,
          # IANA timezone id for the reference.
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
