# typed: strong

module Telnyx
  module Models
    class CallReasonValidateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CallReasonValidateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::Models::CallReasonValidateResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::CallReasonValidateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::CallReasonValidateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::CallReasonValidateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::CallReasonValidateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # `true` when every supplied reason matches a pre-vetted entry in the call-reason
        # library. When `true`, the DIR will sail through the call-reasons portion of
        # vetting.
        sig { returns(T::Boolean) }
        attr_accessor :all_pre_approved

        # Subset of the input that does NOT match the pre-vetted library. The DIR can
        # still be submitted with these — they will go through manual review.
        sig { returns(T::Array[String]) }
        attr_accessor :non_approved_reasons

        # `true` when at least one supplied reason is in `non_approved_reasons`.
        # Equivalent to `non_approved_reasons.length > 0` and the inverse of
        # `all_pre_approved`.
        sig { returns(T::Boolean) }
        attr_accessor :requires_manual_vetting

        sig do
          params(
            all_pre_approved: T::Boolean,
            non_approved_reasons: T::Array[String],
            requires_manual_vetting: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # `true` when every supplied reason matches a pre-vetted entry in the call-reason
          # library. When `true`, the DIR will sail through the call-reasons portion of
          # vetting.
          all_pre_approved:,
          # Subset of the input that does NOT match the pre-vetted library. The DIR can
          # still be submitted with these — they will go through manual review.
          non_approved_reasons:,
          # `true` when at least one supplied reason is in `non_approved_reasons`.
          # Equivalent to `non_approved_reasons.length > 0` and the inverse of
          # `all_pre_approved`.
          requires_manual_vetting:
        )
        end

        sig do
          override.returns(
            {
              all_pre_approved: T::Boolean,
              non_approved_reasons: T::Array[String],
              requires_manual_vetting: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
