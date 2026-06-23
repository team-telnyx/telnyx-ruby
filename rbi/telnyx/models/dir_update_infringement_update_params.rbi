# typed: strong

module Telnyx
  module Models
    class DirUpdateInfringementUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::DirUpdateInfringementUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :dir_id

      # Must be `true`.
      sig do
        returns(
          Telnyx::DirUpdateInfringementUpdateParams::CertifyBrandIsAccurate::OrBoolean
        )
      end
      attr_accessor :certify_brand_is_accurate

      # Must be `true`.
      sig do
        returns(
          Telnyx::DirUpdateInfringementUpdateParams::CertifyIPOwnership::OrBoolean
        )
      end
      attr_accessor :certify_ip_ownership

      # Must be `true`.
      sig do
        returns(
          Telnyx::DirUpdateInfringementUpdateParams::CertifyNoInfringement::OrBoolean
        )
      end
      attr_accessor :certify_no_infringement

      # Must be `true`.
      sig do
        returns(
          Telnyx::DirUpdateInfringementUpdateParams::CertifyNoShaftContent::OrBoolean
        )
      end
      attr_accessor :certify_no_shaft_content

      # Explanation of how the infringement concern was addressed.
      sig { returns(String) }
      attr_accessor :infringement_resolution_notes

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :call_reasons

      sig { returns(T.nilable(String)) }
      attr_accessor :display_name

      # Append-only supporting documents.
      sig { returns(T.nilable(T::Array[Telnyx::Document])) }
      attr_accessor :documents

      # Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
      sig { returns(T.nilable(String)) }
      attr_accessor :logo_url

      sig do
        params(
          dir_id: String,
          certify_brand_is_accurate:
            Telnyx::DirUpdateInfringementUpdateParams::CertifyBrandIsAccurate::OrBoolean,
          certify_ip_ownership:
            Telnyx::DirUpdateInfringementUpdateParams::CertifyIPOwnership::OrBoolean,
          certify_no_infringement:
            Telnyx::DirUpdateInfringementUpdateParams::CertifyNoInfringement::OrBoolean,
          certify_no_shaft_content:
            Telnyx::DirUpdateInfringementUpdateParams::CertifyNoShaftContent::OrBoolean,
          infringement_resolution_notes: String,
          call_reasons: T.nilable(T::Array[String]),
          display_name: T.nilable(String),
          documents: T.nilable(T::Array[Telnyx::Document::OrHash]),
          logo_url: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        dir_id:,
        # Must be `true`.
        certify_brand_is_accurate:,
        # Must be `true`.
        certify_ip_ownership:,
        # Must be `true`.
        certify_no_infringement:,
        # Must be `true`.
        certify_no_shaft_content:,
        # Explanation of how the infringement concern was addressed.
        infringement_resolution_notes:,
        call_reasons: nil,
        display_name: nil,
        # Append-only supporting documents.
        documents: nil,
        # Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
        logo_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            dir_id: String,
            certify_brand_is_accurate:
              Telnyx::DirUpdateInfringementUpdateParams::CertifyBrandIsAccurate::OrBoolean,
            certify_ip_ownership:
              Telnyx::DirUpdateInfringementUpdateParams::CertifyIPOwnership::OrBoolean,
            certify_no_infringement:
              Telnyx::DirUpdateInfringementUpdateParams::CertifyNoInfringement::OrBoolean,
            certify_no_shaft_content:
              Telnyx::DirUpdateInfringementUpdateParams::CertifyNoShaftContent::OrBoolean,
            infringement_resolution_notes: String,
            call_reasons: T.nilable(T::Array[String]),
            display_name: T.nilable(String),
            documents: T.nilable(T::Array[Telnyx::Document]),
            logo_url: T.nilable(String),
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
              Telnyx::DirUpdateInfringementUpdateParams::CertifyBrandIsAccurate
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            Telnyx::DirUpdateInfringementUpdateParams::CertifyBrandIsAccurate::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::DirUpdateInfringementUpdateParams::CertifyBrandIsAccurate::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end

      # Must be `true`.
      module CertifyIPOwnership
        extend Telnyx::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              Telnyx::DirUpdateInfringementUpdateParams::CertifyIPOwnership
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            Telnyx::DirUpdateInfringementUpdateParams::CertifyIPOwnership::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::DirUpdateInfringementUpdateParams::CertifyIPOwnership::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end

      # Must be `true`.
      module CertifyNoInfringement
        extend Telnyx::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              Telnyx::DirUpdateInfringementUpdateParams::CertifyNoInfringement
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            Telnyx::DirUpdateInfringementUpdateParams::CertifyNoInfringement::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::DirUpdateInfringementUpdateParams::CertifyNoInfringement::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end

      # Must be `true`.
      module CertifyNoShaftContent
        extend Telnyx::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              Telnyx::DirUpdateInfringementUpdateParams::CertifyNoShaftContent
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            Telnyx::DirUpdateInfringementUpdateParams::CertifyNoShaftContent::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::DirUpdateInfringementUpdateParams::CertifyNoShaftContent::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
