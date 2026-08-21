control 'SC-7 (18)' do
  impact 0.5
  title 'Fail Secure'
  desc <<~DESC
    Prevent systems from entering unsecure states in the event of an operational failure of a boundary protection device.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-07(18) systems are prevented from entering unsecure states in the event of an operational failure of a boundary protection device.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system architecture; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms supporting and/or implementing secure failure
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Fail secure is a condition achieved by employing mechanisms to ensure that in the event of operational failures of boundary protection devices at managed interfaces, systems do not enter into unsecure states where intended security properties no longer hold. Managed interfaces include routers, firewalls, and application gateways that reside on protected subnetworks (commonly referred to as demilitarized zones). Failures of boundary protection devices cannot lead to or cause information external to the devices to enter the devices nor can failures permit unauthorized information releases.
  GUIDANCE
  tag nist: ['SC-7 (18)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{HIGH}
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control SC-7 (18)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
