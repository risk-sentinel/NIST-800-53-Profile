control 'SC-28' do
  impact 0.5
  title "the #{input('sc_28_odp_01')} of #{input('sc_28_odp_02')} is/are protected."
  desc <<~DESC
    Protect the #{input('sc_28_odp_01')} of the following information at rest: #{input('sc_28_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the #{input('sc_28_odp_01')} of #{input('sc_28_odp_02')} is/are protected.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing the protection of information at rest; system design documentation; system configuration settings and associated documentation; cryptographic mechanisms and associated configuration documentation; list of information at rest requiring confidentiality and integrity protections; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer
      TEST: Mechanisms supporting and/or implementing confidentiality and integrity protections for information at rest
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information at rest refers to the state of information when it is not in process or in transit and is located on system components. Such components include internal or external hard disk drives, storage area network devices, or databases. However, the focus of protecting information at rest is not on the type of storage device or frequency of access but rather on the state of the information. Information at rest addresses the confidentiality and integrity of information and covers user information and system information. System-related information that requires protection includes configurations or rule sets for firewalls, intrusion detection and prevention systems, filtering routers, and authentication information. Organizations may employ different mechanisms to achieve confidentiality and integrity protections, including the use of cryptographic mechanisms and file share scanning. Integrity protection can be achieved, for example, by implementing write-once-read-many (WORM) technologies. When adequate protection of information at rest cannot otherwise be achieved, organizations may employ other controls, including frequent scanning to identify malicious code at rest and secure offline storage in lieu of online storage.
  GUIDANCE
  tag nist: ['SC-28']
  tag control: 'SC-28'
  tag objective: 'SC-28'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sc_28: true
  tag odp: %w{sc_28_odp_01 sc_28_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SC-28' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
