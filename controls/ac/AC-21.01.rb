control 'AC-21(01)' do
  impact 0.5
  title "#{input('ac_21_01_odp')} are employed to enforce information-sharing decisions by authorized users based on access authorizations of sharing partners and access restrictions on information to be shared."
  desc <<~DESC
    Employ #{input('ac_21_01_odp')} to enforce information-sharing decisions by authorized users based on access authorizations of sharing partners and access restrictions on information to be shared.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ac_21_01_odp')} are employed to enforce information-sharing decisions by authorized users based on access authorizations of sharing partners and access restrictions on information to be shared.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing user-based collaboration and information sharing (including restrictions); system design documentation; system configuration settings and associated documentation; system-generated list of users authorized to make information-sharing/collaboration decisions; system-generated list of sharing partners and access authorizations; system-generated list of access restrictions regarding information to be shared; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Automated mechanisms implementing access authorizations supporting information-sharing/user collaboration decisions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Automated mechanisms are used to enforce information sharing decisions.
  GUIDANCE
  tag nist: ['AC-21 (1)']
  tag control: 'AC-21 (1)'
  tag objective: 'AC-21(01)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_21_1: true
  tag odp: %w{ac_21_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-21(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
