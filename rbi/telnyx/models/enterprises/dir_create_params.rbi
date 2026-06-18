# typed: strong

module Telnyx
  module Models
    module Enterprises
      class DirCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Enterprises::DirCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :enterprise_id

        # Contact email of the authorizer. Telnyx may send verification or
        # infringement-notice email here; use a monitored mailbox.
        sig { returns(String) }
        attr_accessor :authorizer_email

        # Name of the person at your enterprise who is authorizing this DIR registration.
        # Must be a real individual (used for audit and trademark-claim contests).
        sig { returns(String) }
        attr_accessor :authorizer_name

        # Must be `true`.
        sig do
          returns(
            Telnyx::Enterprises::DirCreateParams::CertifyBrandIsAccurate::OrBoolean
          )
        end
        attr_accessor :certify_brand_is_accurate

        # Must be `true`. Confirms ownership of any logos/trademarks shown.
        sig do
          returns(
            Telnyx::Enterprises::DirCreateParams::CertifyIPOwnership::OrBoolean
          )
        end
        attr_accessor :certify_ip_ownership

        # Must be `true`. Confirms this DIR is not used for SHAFT content (Sex, Hate,
        # Alcohol, Firearms, Tobacco) where prohibited.
        sig do
          returns(
            Telnyx::Enterprises::DirCreateParams::CertifyNoShaftContent::OrBoolean
          )
        end
        attr_accessor :certify_no_shaft_content

        # Name shown to call recipients. No emoji; not whitespace-only.
        sig { returns(String) }
        attr_accessor :display_name

        # 1–10 reasons your business calls customers. Validate phrasing against
        # `POST /call_reasons/validate`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :call_reasons

        sig { params(call_reasons: T::Array[String]).void }
        attr_writer :call_reasons

        # Supporting documents. Each `document_id` may appear at most once on a DIR.
        sig { returns(T.nilable(T::Array[Telnyx::Document])) }
        attr_reader :documents

        sig { params(documents: T::Array[Telnyx::Document::OrHash]).void }
        attr_writer :documents

        # Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
        sig { returns(T.nilable(String)) }
        attr_reader :logo_url

        sig { params(logo_url: String).void }
        attr_writer :logo_url

        # Set to true if your organization places calls on behalf of other enterprises
        # (BPO/reseller).
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :reselling

        sig { params(reselling: T::Boolean).void }
        attr_writer :reselling

        sig do
          params(
            enterprise_id: String,
            authorizer_email: String,
            authorizer_name: String,
            certify_brand_is_accurate:
              Telnyx::Enterprises::DirCreateParams::CertifyBrandIsAccurate::OrBoolean,
            certify_ip_ownership:
              Telnyx::Enterprises::DirCreateParams::CertifyIPOwnership::OrBoolean,
            certify_no_shaft_content:
              Telnyx::Enterprises::DirCreateParams::CertifyNoShaftContent::OrBoolean,
            display_name: String,
            call_reasons: T::Array[String],
            documents: T::Array[Telnyx::Document::OrHash],
            logo_url: String,
            reselling: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          enterprise_id:,
          # Contact email of the authorizer. Telnyx may send verification or
          # infringement-notice email here; use a monitored mailbox.
          authorizer_email:,
          # Name of the person at your enterprise who is authorizing this DIR registration.
          # Must be a real individual (used for audit and trademark-claim contests).
          authorizer_name:,
          # Must be `true`.
          certify_brand_is_accurate:,
          # Must be `true`. Confirms ownership of any logos/trademarks shown.
          certify_ip_ownership:,
          # Must be `true`. Confirms this DIR is not used for SHAFT content (Sex, Hate,
          # Alcohol, Firearms, Tobacco) where prohibited.
          certify_no_shaft_content:,
          # Name shown to call recipients. No emoji; not whitespace-only.
          display_name:,
          # 1–10 reasons your business calls customers. Validate phrasing against
          # `POST /call_reasons/validate`.
          call_reasons: nil,
          # Supporting documents. Each `document_id` may appear at most once on a DIR.
          documents: nil,
          # Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
          logo_url: nil,
          # Set to true if your organization places calls on behalf of other enterprises
          # (BPO/reseller).
          reselling: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              enterprise_id: String,
              authorizer_email: String,
              authorizer_name: String,
              certify_brand_is_accurate:
                Telnyx::Enterprises::DirCreateParams::CertifyBrandIsAccurate::OrBoolean,
              certify_ip_ownership:
                Telnyx::Enterprises::DirCreateParams::CertifyIPOwnership::OrBoolean,
              certify_no_shaft_content:
                Telnyx::Enterprises::DirCreateParams::CertifyNoShaftContent::OrBoolean,
              display_name: String,
              call_reasons: T::Array[String],
              documents: T::Array[Telnyx::Document],
              logo_url: String,
              reselling: T::Boolean,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Must be `true`.
        module CertifyBrandIsAccurate
          extend Telnyx::Internal::Type::Enum

          TaggedBoolean =
            T.type_alias do
              T.all(
                T::Boolean,
                Telnyx::Enterprises::DirCreateParams::CertifyBrandIsAccurate
              )
            end
          OrBoolean = T.type_alias { T::Boolean }

          TRUE =
            T.let(
              true,
              Telnyx::Enterprises::DirCreateParams::CertifyBrandIsAccurate::TaggedBoolean
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Enterprises::DirCreateParams::CertifyBrandIsAccurate::TaggedBoolean
              ]
            )
          end
          def self.values
          end
        end

        # Must be `true`. Confirms ownership of any logos/trademarks shown.
        module CertifyIPOwnership
          extend Telnyx::Internal::Type::Enum

          TaggedBoolean =
            T.type_alias do
              T.all(
                T::Boolean,
                Telnyx::Enterprises::DirCreateParams::CertifyIPOwnership
              )
            end
          OrBoolean = T.type_alias { T::Boolean }

          TRUE =
            T.let(
              true,
              Telnyx::Enterprises::DirCreateParams::CertifyIPOwnership::TaggedBoolean
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Enterprises::DirCreateParams::CertifyIPOwnership::TaggedBoolean
              ]
            )
          end
          def self.values
          end
        end

        # Must be `true`. Confirms this DIR is not used for SHAFT content (Sex, Hate,
        # Alcohol, Firearms, Tobacco) where prohibited.
        module CertifyNoShaftContent
          extend Telnyx::Internal::Type::Enum

          TaggedBoolean =
            T.type_alias do
              T.all(
                T::Boolean,
                Telnyx::Enterprises::DirCreateParams::CertifyNoShaftContent
              )
            end
          OrBoolean = T.type_alias { T::Boolean }

          TRUE =
            T.let(
              true,
              Telnyx::Enterprises::DirCreateParams::CertifyNoShaftContent::TaggedBoolean
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Enterprises::DirCreateParams::CertifyNoShaftContent::TaggedBoolean
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
