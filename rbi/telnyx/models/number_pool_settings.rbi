# typed: strong

module Telnyx
  module Models
    class NumberPoolSettings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::NumberPoolSettings, Telnyx::Internal::AnyHash)
        end

      # Defines the probability weight for a Long Code number to be selected when
      # sending a message. The higher the weight the higher the probability. The sum of
      # the weights for all number types does not necessarily need to add to 100. Weight
      # must be a non-negative number, and when equal to zero it will remove the number
      # type from the pool.
      sig { returns(Float) }
      attr_accessor :long_code_weight

      # If set to true all unhealthy numbers will be automatically excluded from the
      # pool. Health metrics per number are calculated on a regular basis, taking into
      # account the deliverability rate and the amount of messages marked as spam by
      # upstream carriers. Numbers with a deliverability rate below 25% or spam ratio
      # over 75% will be considered unhealthy.
      sig { returns(T::Boolean) }
      attr_accessor :skip_unhealthy

      # Defines the probability weight for a Toll Free number to be selected when
      # sending a message. The higher the weight the higher the probability. The sum of
      # the weights for all number types does not necessarily need to add to 100. Weight
      # must be a non-negative number, and when equal to zero it will remove the number
      # type from the pool.
      sig { returns(Float) }
      attr_accessor :toll_free_weight

      # If set to true, Number Pool will try to choose a sending number with the same
      # area code as the destination number. If there are no such numbers available, a
      # nunber with a different area code will be chosen. Currently only NANP numbers
      # are supported.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :geomatch

      sig { params(geomatch: T::Boolean).void }
      attr_writer :geomatch

      # If set to true, Number Pool will try to choose the same sending number for all
      # messages to a particular recipient. If the sending number becomes unhealthy and
      # `skip_unhealthy` is set to true, a new number will be chosen.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :sticky_sender

      sig { params(sticky_sender: T::Boolean).void }
      attr_writer :sticky_sender

      # Number Pool allows you to send messages from a pool of numbers of different
      # types, assigning weights to each type. The pool consists of all the long code
      # and toll free numbers assigned to the messaging profile.
      #
      # To disable this feature, set the object field to `null`.
      sig do
        params(
          long_code_weight: Float,
          skip_unhealthy: T::Boolean,
          toll_free_weight: Float,
          geomatch: T::Boolean,
          sticky_sender: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # Defines the probability weight for a Long Code number to be selected when
        # sending a message. The higher the weight the higher the probability. The sum of
        # the weights for all number types does not necessarily need to add to 100. Weight
        # must be a non-negative number, and when equal to zero it will remove the number
        # type from the pool.
        long_code_weight:,
        # If set to true all unhealthy numbers will be automatically excluded from the
        # pool. Health metrics per number are calculated on a regular basis, taking into
        # account the deliverability rate and the amount of messages marked as spam by
        # upstream carriers. Numbers with a deliverability rate below 25% or spam ratio
        # over 75% will be considered unhealthy.
        skip_unhealthy:,
        # Defines the probability weight for a Toll Free number to be selected when
        # sending a message. The higher the weight the higher the probability. The sum of
        # the weights for all number types does not necessarily need to add to 100. Weight
        # must be a non-negative number, and when equal to zero it will remove the number
        # type from the pool.
        toll_free_weight:,
        # If set to true, Number Pool will try to choose a sending number with the same
        # area code as the destination number. If there are no such numbers available, a
        # nunber with a different area code will be chosen. Currently only NANP numbers
        # are supported.
        geomatch: nil,
        # If set to true, Number Pool will try to choose the same sending number for all
        # messages to a particular recipient. If the sending number becomes unhealthy and
        # `skip_unhealthy` is set to true, a new number will be chosen.
        sticky_sender: nil
      )
      end

      sig do
        override.returns(
          {
            long_code_weight: Float,
            skip_unhealthy: T::Boolean,
            toll_free_weight: Float,
            geomatch: T::Boolean,
            sticky_sender: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
