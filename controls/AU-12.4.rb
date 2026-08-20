control 'AU-12 (4)' do
  impact 0.5
  title 'Query Parameter Audits of Personally Identifiable Information'
  desc <<~DESC
    Provide and implement the capability for auditing the parameters of user query events for data sets containing personally identifiable information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-12(04)[01] the capability to audit the parameters of user query events for data sets containing personally identifiable information is provided;
      AU-12(04)[02] the capability to audit the parameters of user query events for data sets containing personally identifiable information is implemented.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing audit record generation; query event records; system design documentation; system configuration settings and associated documentation; map of system data actions; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit record generation responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Mechanisms implementing audit record generation capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Query parameters are explicit criteria that an individual or automated system submits to a system to retrieve data. Auditing of query parameters for datasets that contain personally identifiable information augments the capability of an organization to track and understand the access, usage, or sharing of personally identifiable information by authorized personnel.
  GUIDANCE
  tag nist: ['AU-12 (4)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control AU-12 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
