control 'IR-07(02)(b)' do
  impact 0.5
  title "organizational incident response team members are identified to the external providers."
  desc <<~DESC
    (a) Establish a direct, cooperative relationship between its incident response capability and external providers of system protection capability; and
    (b) Identify organizational incident response team members to the external providers.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      organizational incident response team members are identified to the external providers.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident response assistance; incident response plan; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response support and assistance responsibilities; external providers of system protection capability; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    External providers of a system protection capability include the Computer Network Defense program within the U.S. Department of Defense. External providers help to protect, monitor, analyze, detect, and respond to unauthorized activity within organizational information systems and networks. It may be beneficial to have agreements in place with external providers to clarify the roles and responsibilities of each party before an incident occurs.
  GUIDANCE
  tag nist: ['IR-7 (2)']
  tag control: 'IR-7 (2)'
  tag objective: 'IR-07(02)(b)'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag control_ir_7_2: true

  describe 'NIST SP 800-53A Rev 5 objective IR-07(02)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
