# typed: strong

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # Tollfree verification status
        module TfVerificationStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MessagingTollfree::Verification::TfVerificationStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VERIFIED =
            T.let(
              :Verified,
              Telnyx::MessagingTollfree::Verification::TfVerificationStatus::TaggedSymbol
            )
          REJECTED =
            T.let(
              :Rejected,
              Telnyx::MessagingTollfree::Verification::TfVerificationStatus::TaggedSymbol
            )
          WAITING_FOR_VENDOR =
            T.let(
              :"Waiting For Vendor",
              Telnyx::MessagingTollfree::Verification::TfVerificationStatus::TaggedSymbol
            )
          WAITING_FOR_CUSTOMER =
            T.let(
              :"Waiting For Customer",
              Telnyx::MessagingTollfree::Verification::TfVerificationStatus::TaggedSymbol
            )
          WAITING_FOR_TELNYX =
            T.let(
              :"Waiting For Telnyx",
              Telnyx::MessagingTollfree::Verification::TfVerificationStatus::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :"In Progress",
              Telnyx::MessagingTollfree::Verification::TfVerificationStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MessagingTollfree::Verification::TfVerificationStatus::TaggedSymbol
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
