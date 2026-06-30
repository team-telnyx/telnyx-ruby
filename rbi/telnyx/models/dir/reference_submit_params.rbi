# typed: strong

module Telnyx
  module Models
    module Dir
      class ReferenceSubmitParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Dir::ReferenceSubmitParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :dir_id

        # Exactly two business references.
        sig do
          returns(
            T::Array[Telnyx::Dir::ReferenceSubmitParams::BusinessReference]
          )
        end
        attr_accessor :business_references

        # One reference supplied at submit. The reference type is implied by the field
        # that carries it (business_references vs financial_reference).
        sig { returns(Telnyx::Dir::ReferenceSubmitParams::FinancialReference) }
        attr_reader :financial_reference

        sig do
          params(
            financial_reference:
              Telnyx::Dir::ReferenceSubmitParams::FinancialReference::OrHash
          ).void
        end
        attr_writer :financial_reference

        sig do
          params(
            dir_id: String,
            business_references:
              T::Array[
                Telnyx::Dir::ReferenceSubmitParams::BusinessReference::OrHash
              ],
            financial_reference:
              Telnyx::Dir::ReferenceSubmitParams::FinancialReference::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          dir_id:,
          # Exactly two business references.
          business_references:,
          # One reference supplied at submit. The reference type is implied by the field
          # that carries it (business_references vs financial_reference).
          financial_reference:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              dir_id: String,
              business_references:
                T::Array[Telnyx::Dir::ReferenceSubmitParams::BusinessReference],
              financial_reference:
                Telnyx::Dir::ReferenceSubmitParams::FinancialReference,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class BusinessReference < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Dir::ReferenceSubmitParams::BusinessReference,
                Telnyx::Internal::AnyHash
              )
            end

          # Reference contact email address. Required: the reference is emailed scheduling
          # and dial-in notices.
          sig { returns(String) }
          attr_accessor :email

          # Full name of the reference contact.
          sig { returns(String) }
          attr_accessor :full_name

          # Reference phone number in E.164 format, e.g. +14155550123.
          sig { returns(String) }
          attr_accessor :phone_e164

          # IANA timezone id for the reference (e.g. America/New_York). Required: calls are
          # only placed within the reference's local 8am-9pm window.
          sig { returns(String) }
          attr_accessor :timezone

          # Job title of the reference contact.
          sig { returns(T.nilable(String)) }
          attr_accessor :job_title

          # Organization the reference contact belongs to.
          sig { returns(T.nilable(String)) }
          attr_accessor :organization

          # How the reference contact is related to the registering business.
          sig { returns(T.nilable(String)) }
          attr_accessor :relationship_to_registrant

          # One reference supplied at submit. The reference type is implied by the field
          # that carries it (business_references vs financial_reference).
          sig do
            params(
              email: String,
              full_name: String,
              phone_e164: String,
              timezone: String,
              job_title: T.nilable(String),
              organization: T.nilable(String),
              relationship_to_registrant: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Reference contact email address. Required: the reference is emailed scheduling
            # and dial-in notices.
            email:,
            # Full name of the reference contact.
            full_name:,
            # Reference phone number in E.164 format, e.g. +14155550123.
            phone_e164:,
            # IANA timezone id for the reference (e.g. America/New_York). Required: calls are
            # only placed within the reference's local 8am-9pm window.
            timezone:,
            # Job title of the reference contact.
            job_title: nil,
            # Organization the reference contact belongs to.
            organization: nil,
            # How the reference contact is related to the registering business.
            relationship_to_registrant: nil
          )
          end

          sig do
            override.returns(
              {
                email: String,
                full_name: String,
                phone_e164: String,
                timezone: String,
                job_title: T.nilable(String),
                organization: T.nilable(String),
                relationship_to_registrant: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class FinancialReference < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Dir::ReferenceSubmitParams::FinancialReference,
                Telnyx::Internal::AnyHash
              )
            end

          # Reference contact email address. Required: the reference is emailed scheduling
          # and dial-in notices.
          sig { returns(String) }
          attr_accessor :email

          # Full name of the reference contact.
          sig { returns(String) }
          attr_accessor :full_name

          # Reference phone number in E.164 format, e.g. +14155550123.
          sig { returns(String) }
          attr_accessor :phone_e164

          # IANA timezone id for the reference (e.g. America/New_York). Required: calls are
          # only placed within the reference's local 8am-9pm window.
          sig { returns(String) }
          attr_accessor :timezone

          # Job title of the reference contact.
          sig { returns(T.nilable(String)) }
          attr_accessor :job_title

          # Organization the reference contact belongs to.
          sig { returns(T.nilable(String)) }
          attr_accessor :organization

          # How the reference contact is related to the registering business.
          sig { returns(T.nilable(String)) }
          attr_accessor :relationship_to_registrant

          # One reference supplied at submit. The reference type is implied by the field
          # that carries it (business_references vs financial_reference).
          sig do
            params(
              email: String,
              full_name: String,
              phone_e164: String,
              timezone: String,
              job_title: T.nilable(String),
              organization: T.nilable(String),
              relationship_to_registrant: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Reference contact email address. Required: the reference is emailed scheduling
            # and dial-in notices.
            email:,
            # Full name of the reference contact.
            full_name:,
            # Reference phone number in E.164 format, e.g. +14155550123.
            phone_e164:,
            # IANA timezone id for the reference (e.g. America/New_York). Required: calls are
            # only placed within the reference's local 8am-9pm window.
            timezone:,
            # Job title of the reference contact.
            job_title: nil,
            # Organization the reference contact belongs to.
            organization: nil,
            # How the reference contact is related to the registering business.
            relationship_to_registrant: nil
          )
          end

          sig do
            override.returns(
              {
                email: String,
                full_name: String,
                phone_e164: String,
                timezone: String,
                job_title: T.nilable(String),
                organization: T.nilable(String),
                relationship_to_registrant: T.nilable(String)
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
