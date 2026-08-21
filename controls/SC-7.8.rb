control 'SC-7 (8)' do
  impact 0.5
  title 'Route Traffic to Authenticated Proxy Servers'
  desc <<~DESC
    Route #{input('sc_07_08_odp_01')} to #{input('sc_07_08_odp_02')} through authenticated proxy servers at managed interfaces.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-07(08) #{input('sc_07_08_odp_01')} is routed to #{input('sc_07_08_odp_02')} through authenticated proxy servers at managed interfaces.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system hardware and software; system architecture; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms implementing traffic management through authenticated proxy servers at managed interfaces
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    External networks are networks outside of organizational control. A proxy server is a server (i.e., system or application) that acts as an intermediary for clients requesting system resources from non-organizational or other organizational servers. System resources that may be requested include files, connections, web pages, or services. Client requests established through a connection to a proxy server are assessed to manage complexity and provide additional protection by limiting direct connectivity. Web content filtering devices are one of the most common proxy servers that provide access to the Internet. Proxy servers can support the logging of Transmission Control Protocol sessions and the blocking of specific Uniform Resource Locators, Internet Protocol addresses, and domain names. Web proxies can be configured with organization-defined lists of authorized and unauthorized websites. Note that proxy servers may inhibit the use of virtual private networks (VPNs) and create the potential for "man-in-the-middle" attacks (depending on the implementation).
  GUIDANCE
  tag nist: ['SC-7 (8)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{sc_07_08_odp_01 sc_07_08_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SC-7 (8)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
