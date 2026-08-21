control 'AU-12(02)' do
  impact 0.5
  title "a system-wide (logical or physical) audit trail composed of audit records is produced in a standardized format."
  desc <<~DESC
    Produce a system-wide (logical or physical) audit trail composed of audit records in a standardized format.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a system-wide (logical or physical) audit trail composed of audit records is produced in a standardized format.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing audit record generation; system design documentation; system configuration settings and associated documentation; system-wide audit trail (logical or physical); system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with audit record generation responsibilities; organizational personnel with security responsibilities; system/network administrators; system developers
      TEST: Mechanisms implementing audit record generation capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Audit records that follow common standards promote interoperability and information exchange between devices and systems. Promoting interoperability and information exchange facilitates the production of event information that can be readily analyzed and correlated. If logging mechanisms do not conform to standardized formats, systems may convert individual audit records into standardized formats when compiling system-wide audit trails.
  GUIDANCE
  tag nist: ['AU-12 (2)']
  tag control: 'AU-12 (2)'
  tag objective: 'AU-12(02)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag control_au_12_2: true

  describe 'NIST SP 800-53A Rev 5 objective AU-12(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
