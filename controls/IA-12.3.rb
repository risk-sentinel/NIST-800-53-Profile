control 'IA-12 (3)' do
  impact 0.5
  title 'Identity Evidence Validation and Verification'
  desc <<~DESC
    Require that the presented identity evidence be validated and verified through #{input('ia_12_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-12(03) the presented identity evidence is validated and verified through #{input('ia_12_03_odp')}.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing identity proofing; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers; organizational personnel with identification and authentication responsibilities
      TEST: Mechanisms supporting and/or implementing identification and authentication capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Validation and verification of identity evidence increases the assurance that accounts and identifiers are being established for the correct user and authenticators are being bound to that user. Validation refers to the process of confirming that the evidence is genuine and authentic, and the data contained in the evidence is correct, current, and related to an individual. Verification confirms and establishes a linkage between the claimed identity and the actual existence of the user presenting the evidence. Acceptable methods for validating and verifying identity evidence are consistent with the risks to the systems, roles, and privileges associated with the users account.
  GUIDANCE
  tag nist: ['IA-12 (3)']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ia_12_03_odp}

  describe 'NIST SP 800-53 Rev 5 control IA-12 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
