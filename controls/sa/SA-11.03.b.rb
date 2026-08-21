control 'SA-11(03)(b)' do
  impact 0.5
  title "the independent agent is provided with sufficient information to complete the verification process or granted the authority to obtain such information."
  desc <<~DESC
    (a) Require an independent agent satisfying #{input('sa_11_03_odp')} to verify the correct implementation of the developer security and privacy assessment plans and the evidence produced during testing and evaluation; and
    (b) Verify that the independent agent is provided with sufficient information to complete the verification process or granted the authority to obtain such information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the independent agent is provided with sufficient information to complete the verification process or granted the authority to obtain such information.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing system developer security testing; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; independent verification and validation reports; security and privacy assessment plans; results of security and privacy assessments for the system, system component, or system service; system security plan; privacy plan; privacy program plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with developer security testing responsibilities; system developers; independent verification agent
      TEST: Organizational processes for monitoring developer security testing and evaluation; mechanisms supporting and/or implementing the monitoring of developer security testing and evaluation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Independent agents have the qualifications—including the expertise, skills, training, certifications, and experience—to verify the correct implementation of developer security and privacy assessment plans.
  GUIDANCE
  tag nist: ['SA-11 (3)']
  tag control: 'SA-11 (3)'
  tag objective: 'SA-11(03)(b)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_11_3: true
  tag odp: %w{sa_11_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-11(03)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
