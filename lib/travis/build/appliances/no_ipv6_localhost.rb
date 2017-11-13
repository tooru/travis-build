require 'travis/build/appliances/base'

module Travis
  module Build
    module Appliances
      class NoIpv6Localhost < Base
        def apply
          sh.raw %(sed -e 's/^\\([0-9a-f:]\\+[ \\t]\\+\\)localhost/\\1/' /etc/hosts > /tmp/hosts.ipv6)
          sh.raw %(sudo mv /tmp/hosts.ipv6 /etc/hosts)
        end
      end
    end
  end
end
