control 'IA-02(06)(b)' do
  impact 0.5
  title "multi-factor authentication is implemented for #{input('ia_02_06_odp_01')} access to #{input('ia_02_06_odp_02')} such that the device meets #{input('ia_02_06_odp_03')}."
  desc <<~DESC
    Implement multi-factor authentication for #{input('ia_02_06_odp_01')} access to #{input('ia_02_06_odp_02')} such that:
      (a) One of the factors is provided by a device separate from the system gaining access; and
      (b) The device meets #{input('ia_02_06_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      multi-factor authentication is implemented for #{input('ia_02_06_odp_01')} access to #{input('ia_02_06_odp_02')} such that the device meets #{input('ia_02_06_odp_03')}.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; procedures addressing user identification and authentication; system design documentation; system configuration settings and associated documentation; system audit records; list of system accounts; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with account management responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms supporting and/or implementing multi-factor authentication capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The purpose of requiring a device that is separate from the system to which the user is attempting to gain access for one of the factors during multi-factor authentication is to reduce the likelihood of compromising authenticators or credentials stored on the system. Adversaries may be able to compromise such authenticators or credentials and subsequently impersonate authorized users. Implementing one of the factors on a separate device (e.g., a hardware token), provides a greater strength of mechanism and an increased level of assurance in the authentication process.
  GUIDANCE
  tag nist: ['IA-2 (6)']
  tag control: 'IA-2 (6)'
  tag objective: 'IA-02(06)(b)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_2_6: true
  tag odp: %w{ia_02_06_odp_01 ia_02_06_odp_02 ia_02_06_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective IA-02(06)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
