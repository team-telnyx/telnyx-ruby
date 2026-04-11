# frozen_string_literal: true

# Custom lib entry point — preserved across Stainless codegen.
#
# This file requires all custom modules in lib/telnyx/lib/.
# It is loaded from lib/telnyx.rb (the gem entry point).
#
# If Stainless regenerates lib/telnyx.rb, the require_relative line
# pointing to this file must be re-added. All other custom code
# lives here and in lib/telnyx/lib/ — safe from codegen.
#
# Add new custom modules below:

require_relative "lib/webhooks_ed25519"
