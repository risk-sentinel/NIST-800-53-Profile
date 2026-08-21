control 'PM-17a.[02]' do
  impact 0.5
  title "procedures are established to ensure that requirements for the protection of controlled unclassified information that is processed, stored, or transmitted on external systems are implemented in accordance with applicable laws, executive orders, directives, policies, regulations, and standards;"
  desc <<~DESC
    a. Establish policy and procedures to ensure that requirements for the protection of controlled unclassified information that is processed, stored or transmitted on external systems, are implemented in accordance with applicable laws, executive orders, directives, policies, regulations, and standards; and
    b. Review and update the policy and procedures #{input('pm_17_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      procedures are established to ensure that requirements for the protection of controlled unclassified information that is processed, stored, or transmitted on external systems are implemented in accordance with applicable laws, executive orders, directives, policies, regulations, and standards;

    Assessment methods and objects:
      EXAMINE: Controlled unclassified information policy; controlled unclassified information procedures; other relevant documents or records.
      INTERVIEW: Organizational personnel with controlled unclassified information responsibilities; organizational personnel with information security responsibilities.
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Controlled unclassified information is defined by the National Archives and Records Administration along with the safeguarding and dissemination requirements for such information and is codified in [32 CFR 2002](#91f992fb-f668-4c91-a50f-0f05b95ccee3) and, specifically for systems external to the federal organization, [32 CFR 2002.14h](https://www.govinfo.gov/content/pkg/CFR-2017-title32-vol6/xml/CFR-2017-title32-vol6-part2002.xml) . The policy prescribes the specific use and conditions to be implemented in accordance with organizational procedures, including via its contracting processes.
  GUIDANCE
  tag nist: ['PM-17']
  tag control: 'PM-17'
  tag objective: 'PM-17a.[02]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_17: true
  tag odp: %w{pm_17_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective PM-17a.[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
