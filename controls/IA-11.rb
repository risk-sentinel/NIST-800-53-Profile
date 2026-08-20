control 'IA-11' do
  impact 0.5
  title 'Re-authentication'
  desc <<~DESC
    Require users to re-authenticate when #{input('ia_11_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-11 users are required to re-authenticate when #{input('ia_11_odp')}.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing user and device re-authentication; system security plan; system design documentation; system configuration settings and associated documentation; list of circumstances or situations requiring re-authentication; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers; organizational personnel with identification and authentication responsibilities
      TEST: Mechanisms supporting and/or implementing identification and authentication capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In addition to the re-authentication requirements associated with device locks, organizations may require re-authentication of individuals in certain situations, including when roles, authenticators or credentials change, when security categories of systems change, when the execution of privileged functions occurs, after a fixed time period, or periodically.
  GUIDANCE
  tag nist: ['IA-11']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ia_11_odp}

  describe 'NIST SP 800-53 Rev 5 control IA-11' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
