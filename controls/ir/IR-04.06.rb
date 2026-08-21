control 'IR-04(06)' do
  impact 0.5
  title "an incident handling capability is implemented for incidents involving insider threats."
  desc <<~DESC
    Implement an incident handling capability for incidents involving insider threats.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      an incident handling capability is implemented for incidents involving insider threats.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident handling; mechanisms supporting incident handling; system design documentation; system configuration settings and associated documentation; incident response plan; system security plan; audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with incident handling responsibilities; organizational personnel with information security responsibilities
      TEST: Incident handling capability for the organization
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Explicit focus on handling incidents involving insider threats provides additional emphasis on this type of threat and the need for specific incident handling capabilities to provide appropriate and timely responses.
  GUIDANCE
  tag nist: ['IR-4 (6)']
  tag control: 'IR-4 (6)'
  tag objective: 'IR-04(06)'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag control_ir_4_6: true

  describe 'NIST SP 800-53A Rev 5 objective IR-04(06)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
