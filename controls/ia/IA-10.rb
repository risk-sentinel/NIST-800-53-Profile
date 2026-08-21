control 'IA-10' do
  impact 0.5
  title "individuals accessing the system are required to employ #{input('ia_10_odp_01')} under specific #{input('ia_10_odp_02')}."
  desc <<~DESC
    Require individuals accessing the system to employ #{input('ia_10_odp_01')} under specific #{input('ia_10_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      individuals accessing the system are required to employ #{input('ia_10_odp_01')} under specific #{input('ia_10_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing adaptive/supplemental identification and authentication techniques or mechanisms; system security plan; system design documentation; system configuration settings and associated documentation; supplemental identification and authentication techniques or mechanisms; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers; organizational personnel with identification and authentication responsibilities
      TEST: Mechanisms supporting and/or implementing identification and authentication capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Adversaries may compromise individual authentication mechanisms employed by organizations and subsequently attempt to impersonate legitimate users. To address this threat, organizations may employ specific techniques or mechanisms and establish protocols to assess suspicious behavior. Suspicious behavior may include accessing information that individuals do not typically access as part of their duties, roles, or responsibilities; accessing greater quantities of information than individuals would routinely access; or attempting to access information from suspicious network addresses. When pre-established conditions or triggers occur, organizations can require individuals to provide additional authentication information. Another potential use for adaptive authentication is to increase the strength of mechanism based on the number or types of records being accessed. Adaptive authentication does not replace and is not used to avoid the use of multi-factor authentication mechanisms but can augment implementations of multi-factor authentication.
  GUIDANCE
  tag nist: ['IA-10']
  tag control: 'IA-10'
  tag objective: 'IA-10'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_10: true
  tag odp: %w{ia_10_odp_01 ia_10_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective IA-10' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
