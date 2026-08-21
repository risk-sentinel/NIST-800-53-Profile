control 'IA-02(10)' do
  impact 0.5
  title "a single sign-on capability is provided for #{input('ia_02_10_odp')}."
  desc <<~DESC
    Provide a single sign-on capability for #{input('ia_02_10_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a single sign-on capability is provided for #{input('ia_02_10_odp')}.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; procedures addressing single sign-on capability for system accounts and services; procedures addressing identification and authentication; system design documentation; system configuration settings and associated documentation; system audit records; list of system accounts and services requiring single sign-on capability; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with account management responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms supporting and/or implementing identification and authentication capabilities; mechanisms supporting and/or implementing single sign-on capability for system accounts and services
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Single sign-on enables users to log in once and gain access to multiple system resources. Organizations consider the operational efficiencies provided by single sign-on capabilities with the risk introduced by allowing access to multiple systems via a single authentication event. Single sign-on can present opportunities to improve system security, for example by providing the ability to add multi-factor authentication for applications and systems (existing and new) that may not be able to natively support multi-factor authentication.
  GUIDANCE
  tag nist: ['IA-2 (10)']
  tag control: 'IA-2 (10)'
  tag objective: 'IA-02(10)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_2_10: true
  tag odp: %w{ia_02_10_odp}

  describe 'NIST SP 800-53A Rev 5 objective IA-02(10)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
