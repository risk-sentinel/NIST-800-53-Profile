control 'IR-08(01)(c)' do
  impact 0.5
  title "the incident response plan for breaches involving personally identifiable information includes the identification of applicable privacy requirements."
  desc <<~DESC
    Include the following in the Incident Response Plan for breaches involving personally identifiable information:
      (a) A process to determine if notice to individuals or other organizations, including oversight organizations, is needed;
      (b) An assessment process to determine the extent of the harm, embarrassment, inconvenience, or unfairness to affected individuals and any mechanisms to mitigate such harms; and
      (c) Identification of applicable privacy requirements.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the incident response plan for breaches involving personally identifiable information includes the identification of applicable privacy requirements.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident response planning; incident response plan; system security plan; privacy plan; records of incident response plan reviews and approvals; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response planning responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational incident response plan and related organizational processes
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations may be required by law, regulation, or policy to follow specific procedures relating to breaches, including notice to individuals, affected organizations, and oversight bodies; standards of harm; and mitigation or other specific requirements.
  GUIDANCE
  tag nist: ['IR-8 (1)']
  tag control: 'IR-8 (1)'
  tag objective: 'IR-08(01)(c)'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_ir_8_1: true

  describe 'NIST SP 800-53A Rev 5 objective IR-08(01)(c)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
