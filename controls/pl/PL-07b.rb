control 'PL-07b.' do
  impact 0.5
  title "the CONOPS is reviewed and updated #{input('pl_07_odp')}."
  desc <<~DESC
    a. Develop a Concept of Operations (CONOPS) for the system describing how the organization intends to operate the system from the perspective of information security and privacy; and
    b. Review and update the CONOPS #{input('pl_07_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the CONOPS is reviewed and updated #{input('pl_07_odp')}.

    Assessment methods and objects:
      EXAMINE: Security and privacy planning policy; procedures addressing security and privacy CONOPS development; procedures addressing security and privacy CONOPS reviews and updates; security and privacy CONOPS for the system; system security plan; privacy plan; records of security and privacy CONOPS reviews and updates; other relevant documents or records
      INTERVIEW: Organizational personnel with security and privacy planning and plan implementation responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for developing, reviewing, and updating the security CONOPS; mechanisms supporting and/or implementing the development, review, and update of the security CONOPS
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The CONOPS may be included in the security or privacy plans for the system or in other system development life cycle documents. The CONOPS is a living document that requires updating throughout the system development life cycle. For example, during system design reviews, the concept of operations is checked to ensure that it remains consistent with the design for controls, the system architecture, and the operational procedures. Changes to the CONOPS are reflected in ongoing updates to the security and privacy plans, security and privacy architectures, and other organizational documents, such as procurement specifications, system development life cycle documents, and systems engineering documents.
  GUIDANCE
  tag nist: ['PL-7']
  tag control: 'PL-7'
  tag objective: 'PL-07b.'
  tag rev: 'Rev_5'
  tag family: 'Planning'
  tag baseline: %w{}
  tag control_pl_7: true
  tag odp: %w{pl_07_odp}

  describe 'NIST SP 800-53A Rev 5 objective PL-07b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
