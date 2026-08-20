control 'SC-23 (3)' do
  impact 0.5
  title 'Unique System-generated Session Identifiers'
  desc <<~DESC
    Generate a unique session identifier for each session with #{input('sc_23_03_odp')} and recognize only session identifiers that are system-generated.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-23(03)[01] a unique session identifier is generated for each session with #{input('sc_23_03_odp')};
      SC-23(03)[02] only system-generated session identifiers are recognized.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing session authenticity; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting, implementing, generating, and monitoring unique session identifiers; mechanisms supporting and/or implementing randomness requirements
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Generating unique session identifiers curtails the ability of adversaries to reuse previously valid session IDs. Employing the concept of randomness in the generation of unique session identifiers protects against brute-force attacks to determine future session identifiers.
  GUIDANCE
  tag nist: ['SC-23 (3)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_23_03_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-23 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
