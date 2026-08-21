control 'AC-06(01)(b)' do
  impact 0.5
  title "access is authorized for #{input('ac_06_01_odp_01')} to #{input('ac_06_01_odp_05')}."
  desc <<~DESC
    Authorize access for #{input('ac_06_01_odp_01')} to:
      (a) #{input('ac_6_1_prm_2')} ; and
      (b) #{input('ac_06_01_odp_05')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      access is authorized for #{input('ac_06_01_odp_01')} to #{input('ac_06_01_odp_05')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing least privilege; list of security functions (deployed in hardware, software, and firmware) and security-relevant information for which access must be explicitly authorized; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for defining least privileges necessary to accomplish specified tasks; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms implementing least privilege functions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Security functions include establishing system accounts, configuring access authorizations (i.e., permissions, privileges), configuring settings for events to be audited, and establishing intrusion detection parameters. Security-relevant information includes filtering rules for routers or firewalls, configuration parameters for security services, cryptographic key management information, and access control lists. Authorized personnel include security administrators, system administrators, system security officers, system programmers, and other privileged users.
  GUIDANCE
  tag nist: ['AC-6 (1)']
  tag control: 'AC-6 (1)'
  tag objective: 'AC-06(01)(b)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ac_6_1: true
  tag odp: %w{ac_06_01_odp_01 ac_06_01_odp_05 ac_6_1_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective AC-06(01)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
