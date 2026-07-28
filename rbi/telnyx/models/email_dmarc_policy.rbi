# typed: strong

module Telnyx
  module Models
    class EmailDmarcPolicy < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailDmarcPolicy, Telnyx::Internal::AnyHash)
        end

      # Policy applied to messages that fail alignment.
      sig { returns(T.nilable(Telnyx::EmailDmarcPolicy::P::OrSymbol)) }
      attr_reader :p_

      sig { params(p_: Telnyx::EmailDmarcPolicy::P::OrSymbol).void }
      attr_writer :p_

      # Percentage of messages the policy applies to. Omitted from the record when 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :pct

      sig { params(pct: Integer).void }
      attr_writer :pct

      # URI for aggregate reports. Defaults to the Telnyx address when absent; null
      # omits it.
      sig { returns(T.nilable(String)) }
      attr_accessor :rua

      # Policy for subdomains. Omitted from the record when null.
      sig { returns(T.nilable(Telnyx::EmailDmarcPolicy::Sp::OrSymbol)) }
      attr_accessor :sp

      # DMARC policy for a sending domain. Drives the recommended \_dmarc.<domain> TXT
      # record. DMARC is advisory and never blocks sending. When omitted or null, the
      # domain uses the advisory default (v=DMARC1; p=none;
      # rua=mailto:dmarc@telnyx.com).
      sig do
        params(
          p_: Telnyx::EmailDmarcPolicy::P::OrSymbol,
          pct: Integer,
          rua: T.nilable(String),
          sp: T.nilable(Telnyx::EmailDmarcPolicy::Sp::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # Policy applied to messages that fail alignment.
        p_: nil,
        # Percentage of messages the policy applies to. Omitted from the record when 100.
        pct: nil,
        # URI for aggregate reports. Defaults to the Telnyx address when absent; null
        # omits it.
        rua: nil,
        # Policy for subdomains. Omitted from the record when null.
        sp: nil
      )
      end

      sig do
        override.returns(
          {
            p_: Telnyx::EmailDmarcPolicy::P::OrSymbol,
            pct: Integer,
            rua: T.nilable(String),
            sp: T.nilable(Telnyx::EmailDmarcPolicy::Sp::OrSymbol)
          }
        )
      end
      def to_hash
      end

      # Policy applied to messages that fail alignment.
      module P
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailDmarcPolicy::P) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE = T.let(:none, Telnyx::EmailDmarcPolicy::P::TaggedSymbol)
        QUARANTINE =
          T.let(:quarantine, Telnyx::EmailDmarcPolicy::P::TaggedSymbol)
        REJECT = T.let(:reject, Telnyx::EmailDmarcPolicy::P::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::EmailDmarcPolicy::P::TaggedSymbol])
        end
        def self.values
        end
      end

      # Policy for subdomains. Omitted from the record when null.
      module Sp
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailDmarcPolicy::Sp) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE = T.let(:none, Telnyx::EmailDmarcPolicy::Sp::TaggedSymbol)
        QUARANTINE =
          T.let(:quarantine, Telnyx::EmailDmarcPolicy::Sp::TaggedSymbol)
        REJECT = T.let(:reject, Telnyx::EmailDmarcPolicy::Sp::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::EmailDmarcPolicy::Sp::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
