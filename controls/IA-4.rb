control 'IA-4' do
  impact 0.5
  title 'Identifier Management'
  desc <<~DESC
    Manage system identifiers by:
      a. Receiving authorization from #{input('ia_04_odp_01')} to assign an individual, group, role, service, or device identifier;
      b. Selecting an identifier that identifies an individual, group, role, service, or device;
      c. Assigning the identifier to the intended individual, group, role, service, or device; and
      d. Preventing reuse of identifiers for #{input('ia_04_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-04a. system identifiers are managed by receiving authorization from #{input('ia_04_odp_01')} to assign to an individual, group, role, or device identifier;
      IA-04b. system identifiers are managed by selecting an identifier that identifies an individual, group, role, service, or device;
      IA-04c. system identifiers are managed by assigning the identifier to the intended individual, group, role, service, or device;
      IA-04d. system identifiers are managed by preventing reuse of identifiers for #{input('ia_04_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing identifier management; procedures addressing account management; system security plan; system design documentation; system configuration settings and associated documentation; list of system accounts; list of identifiers generated from physical access control devices; other relevant documents or records
      INTERVIEW: Organizational personnel with identifier management responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms supporting and/or implementing identifier management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Common device identifiers include Media Access Control (MAC) addresses, Internet Protocol (IP) addresses, or device-unique token identifiers. The management of individual identifiers is not applicable to shared system accounts. Typically, individual identifiers are the usernames of the system accounts assigned to those individuals. In such instances, the account management activities of [AC-2](#ac-2) use account names provided by [IA-4](#ia-4) . Identifier management also addresses individual identifiers not necessarily associated with system accounts. Preventing the reuse of identifiers implies preventing the assignment of previously used individual, group, role, service, or device identifiers to different individuals, groups, roles, services, or devices.
  GUIDANCE
  tag nist: ['IA-4']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ia_04_odp_01 ia_04_odp_02}

  describe 'NIST SP 800-53 Rev 5 control IA-4' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
