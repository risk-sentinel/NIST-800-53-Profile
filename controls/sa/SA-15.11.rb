control 'SA-15(11)' do
  impact 0.5
  title "the developer of the system or system component is required to archive the system or component to be released or delivered together with the corresponding evidence supporting the final security and privacy review."
  desc <<~DESC
    Require the developer of the system or system component to archive the system or component to be released or delivered together with the corresponding evidence supporting the final security and privacy review.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system or system component is required to archive the system or component to be released or delivered together with the corresponding evidence supporting the final security and privacy review.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing development process, standards, and tools; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system or system component; evidence of archived system or component; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; system developer; organizational personnel with privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Archiving system or system components requires the developer to retain key development artifacts, including hardware specifications, source code, object code, and relevant documentation from the development process that can provide a readily available configuration baseline for system and component upgrades or modifications.
  GUIDANCE
  tag nist: ['SA-15 (11)']
  tag control: 'SA-15 (11)'
  tag objective: 'SA-15(11)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_15_11: true

  describe 'NIST SP 800-53A Rev 5 objective SA-15(11)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
