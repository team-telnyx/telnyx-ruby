# frozen_string_literal: true

require "telnyx"
require "amazing_print" # for displaying the api requests nicely.
require "tty-prompt" # for prettier interactive prompts.

# Telnyx.api_key = "ENTER A YOUR KEY"
raise "Please set your API key in this script!" unless Telnyx.api_key

class Demo
  def initialize
    @prompt = TTY::Prompt.new
  end

  def start
    create_profile
    puts "Profile object returned from API:"
    ap @profile

    verify
    puts "Verification object returned from API:"
    ap @verification

    puts "A SMS should be sent to the phone number soon."
    check_prompt
  end

  def create_profile
    # Ask what to call the new verification profile.
    profile_name = @prompt.ask("Profile name:", default: "demo profile")
    # Check if we already created a demo profile.
    existing_profile = Telnyx::Profile2FA.list.first { |p| p.name == profile_name }
    # Check if we should use the existing one.
    return @profile = existing_profile if existing_profile && @prompt.yes?(%(Found a profile already called "#{profile_name}", would you like to use that instead of creating a new profile?))

    # Create a new profile.
    @profile = Telnyx::Profile2FA.create name: profile_name
  end

  def verify
    # Create a new verification, this will send a code via SMS to the number provided.
    @verification = Telnyx::Verification2FA.create(
      type: "sms",
      twofa_profile_id: @profile.id,
      phone_number: @prompt.ask("Enter a phone number to send a verification code to (must be e164 format, e.g., +15554443333):", value: "+1") { |p| p.validate(/^\+?[1-9]\d{1,14}$/) }
    )
  end

  def check_prompt
    loop do
      # Ask the user for the verification code.
      code = @prompt.ask "Enter verification code:"
      # Ask the api if this is the correct code.
      response = Telnyx::Verification2FA.submit_code code: code, phone_number: @verification.data.phone_number # BUG!! verification is not being cast to Telnyx::Verification2FA, #data should not be needed.
      puts "Api responded with:"
      ap response

      # If it's not the right code try again.
      break if response.data.response_code == "accepted" # BUG!! verification is not being cast to Telnyx::Verification2FA, #data should not be needed.

      puts "\e[31mIncorrect code, try again!\e[0m"
      create_profile if @prompt.yes?("Resend code?")
    end
  end
end

Demo.new.start
