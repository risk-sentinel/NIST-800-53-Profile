control 'SC-50' do
  impact 0.5
  title 'Software-enforced Separation and Policy Enforcement'
  desc <<~DESC
    Implement software-enforced separation and policy enforcement mechanisms between #{input('sc_50_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-50 software-enforced separation and policy enforcement mechanisms are implemented between #{input('sc_50_odp')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing cross-domain policy enforcement; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system
      TEST: Mechanisms supporting and/or implementing software-enforced separation and policy enforcement
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System owners may require additional strength of mechanism to ensure domain separation and policy enforcement for specific types of threats and environments of operation.
  GUIDANCE
  tag nist: ['SC-50']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_50_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-50' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
