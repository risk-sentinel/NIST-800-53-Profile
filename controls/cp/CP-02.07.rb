control 'CP-02(07)' do
  impact 0.5
  title "the contingency plan is coordinated with the contingency plans of external service providers to ensure that contingency requirements can be satisfied."
  desc <<~DESC
    Coordinate the contingency plan with the contingency plans of external service providers to ensure that contingency requirements can be satisfied.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the contingency plan is coordinated with the contingency plans of external service providers to ensure that contingency requirements can be satisfied.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing contingency operations for the system; contingency plan; contingency plans of external; service providers; service level agreements; contingency plan requirements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning and plan implementation responsibilities; external service providers; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    When the capability of an organization to carry out its mission and business functions is dependent on external service providers, developing a comprehensive and timely contingency plan may become more challenging. When mission and business functions are dependent on external service providers, organizations coordinate contingency planning activities with the external entities to ensure that the individual plans reflect the overall contingency needs of the organization.
  GUIDANCE
  tag nist: ['CP-2 (7)']
  tag control: 'CP-2 (7)'
  tag objective: 'CP-02(07)'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{}
  tag control_cp_2_7: true

  describe 'NIST SP 800-53A Rev 5 objective CP-02(07)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
