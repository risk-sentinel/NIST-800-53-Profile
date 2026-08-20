control 'IA-4 (6)' do
  impact 0.5
  title 'Cross-organization Management'
  desc <<~DESC
    Coordinate with the following external organizations for cross-organization management of identifiers: #{input('ia_04_06_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-04(06) cross-organization management of identifiers is coordinated with #{input('ia_04_06_odp')}.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing identifier management; procedures addressing account management; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with identifier management responsibilities; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing identifier management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Cross-organization identifier management provides the capability to identify individuals, groups, roles, or devices when conducting cross-organization activities involving the processing, storage, or transmission of information.
  GUIDANCE
  tag nist: ['IA-4 (6)']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag odp: %w{ia_04_06_odp}

  describe 'NIST SP 800-53 Rev 5 control IA-4 (6)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
