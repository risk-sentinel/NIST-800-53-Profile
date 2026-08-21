control 'AC-18(01)[01]' do
  impact 0.5
  title "wireless access to the system is protected using authentication of #{input('ac_18_01_odp')};"
  desc <<~DESC
    Protect wireless access to the system using authentication of #{input('ac_18_01_odp')} and encryption.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      wireless access to the system is protected using authentication of #{input('ac_18_01_odp')};

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing wireless implementation and usage (including restrictions); system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing wireless access protections to the system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Wireless networking capabilities represent a significant potential vulnerability that can be exploited by adversaries. To protect systems with wireless access points, strong authentication of users and devices along with strong encryption can reduce susceptibility to threats by adversaries involving wireless technologies.
  GUIDANCE
  tag nist: ['AC-18 (1)']
  tag control: 'AC-18 (1)'
  tag objective: 'AC-18(01)[01]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_18_1: true
  tag odp: %w{ac_18_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-18(01)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
