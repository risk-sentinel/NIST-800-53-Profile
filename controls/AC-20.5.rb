control 'AC-20 (5)' do
  impact 0.5
  title 'Portable Storage Devices — Prohibited Use'
  desc <<~DESC
    Prohibit the use of organization-controlled portable storage devices by authorized individuals on external systems.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-20(05) the use of organization-controlled portable storage devices by authorized individuals is prohibited on external systems.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing use of portable storage devices in external systems; system design documentation; system configuration settings and associated documentation; system connection or processing agreements; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for prohibiting the use of portable storage devices in external systems; system/network administrators; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Limits on the use of organization-controlled portable storage devices in external systems include a complete prohibition of the use of such devices. Prohibiting such use is enforced using technical methods and/or nontechnical (i.e., process-based) methods.
  GUIDANCE
  tag nist: ['AC-20 (5)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control AC-20 (5)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
