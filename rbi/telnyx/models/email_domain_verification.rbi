# typed: strong

module Telnyx
  module Models
    class EmailDomainVerification < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailDomainVerification, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::EmailDomainVerification::Dkim::TaggedSymbol) }
      attr_accessor :dkim

      sig { returns(Telnyx::EmailDomainVerification::Dmarc::TaggedSymbol) }
      attr_accessor :dmarc

      sig { returns(Telnyx::EmailDomainVerification::Mx::TaggedSymbol) }
      attr_accessor :mx

      sig { returns(Telnyx::EmailDomainVerification::Ownership::TaggedSymbol) }
      attr_accessor :ownership

      sig { returns(Telnyx::EmailDomainVerification::Spf::TaggedSymbol) }
      attr_accessor :spf

      sig do
        params(
          dkim: Telnyx::EmailDomainVerification::Dkim::OrSymbol,
          dmarc: Telnyx::EmailDomainVerification::Dmarc::OrSymbol,
          mx: Telnyx::EmailDomainVerification::Mx::OrSymbol,
          ownership: Telnyx::EmailDomainVerification::Ownership::OrSymbol,
          spf: Telnyx::EmailDomainVerification::Spf::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(dkim:, dmarc:, mx:, ownership:, spf:)
      end

      sig do
        override.returns(
          {
            dkim: Telnyx::EmailDomainVerification::Dkim::TaggedSymbol,
            dmarc: Telnyx::EmailDomainVerification::Dmarc::TaggedSymbol,
            mx: Telnyx::EmailDomainVerification::Mx::TaggedSymbol,
            ownership: Telnyx::EmailDomainVerification::Ownership::TaggedSymbol,
            spf: Telnyx::EmailDomainVerification::Spf::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Dkim
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailDomainVerification::Dkim) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Telnyx::EmailDomainVerification::Dkim::TaggedSymbol)
        VERIFIED =
          T.let(:verified, Telnyx::EmailDomainVerification::Dkim::TaggedSymbol)
        FAILED =
          T.let(:failed, Telnyx::EmailDomainVerification::Dkim::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::EmailDomainVerification::Dkim::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Dmarc
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailDomainVerification::Dmarc) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MISSING_OPTIONAL =
          T.let(
            :missing_optional,
            Telnyx::EmailDomainVerification::Dmarc::TaggedSymbol
          )
        VERIFIED =
          T.let(:verified, Telnyx::EmailDomainVerification::Dmarc::TaggedSymbol)
        FAILED =
          T.let(:failed, Telnyx::EmailDomainVerification::Dmarc::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::EmailDomainVerification::Dmarc::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Mx
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailDomainVerification::Mx) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_REQUIRED =
          T.let(
            :not_required,
            Telnyx::EmailDomainVerification::Mx::TaggedSymbol
          )
        PENDING =
          T.let(:pending, Telnyx::EmailDomainVerification::Mx::TaggedSymbol)
        VERIFIED =
          T.let(:verified, Telnyx::EmailDomainVerification::Mx::TaggedSymbol)
        FAILED =
          T.let(:failed, Telnyx::EmailDomainVerification::Mx::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::EmailDomainVerification::Mx::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Ownership
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EmailDomainVerification::Ownership)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Telnyx::EmailDomainVerification::Ownership::TaggedSymbol
          )
        VERIFIED =
          T.let(
            :verified,
            Telnyx::EmailDomainVerification::Ownership::TaggedSymbol
          )
        NOT_REQUIRED =
          T.let(
            :not_required,
            Telnyx::EmailDomainVerification::Ownership::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::EmailDomainVerification::Ownership::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Spf
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailDomainVerification::Spf) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MISSING_OPTIONAL =
          T.let(
            :missing_optional,
            Telnyx::EmailDomainVerification::Spf::TaggedSymbol
          )
        VERIFIED =
          T.let(:verified, Telnyx::EmailDomainVerification::Spf::TaggedSymbol)
        FAILED =
          T.let(:failed, Telnyx::EmailDomainVerification::Spf::TaggedSymbol)
        NOT_REQUIRED =
          T.let(
            :not_required,
            Telnyx::EmailDomainVerification::Spf::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::EmailDomainVerification::Spf::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
