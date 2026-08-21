control 'CP-02(01)' do
  impact 0.5
  title "contingency plan development is coordinated with organizational elements responsible for related plans."
  desc <<~DESC
    Coordinate contingency plan development with organizational elements responsible for related plans.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      contingency plan development is coordinated with organizational elements responsible for related plans.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing contingency operations for the system; contingency plan; business contingency plans; disaster recovery plans; continuity of operations plans; crisis communications plans; critical infrastructure plans; cyber incident response plan; insider threat implementation plans; occupant emergency plans; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning and plan implementation responsibilities; organizational personnel with information security responsibilities; personnel with responsibility for related plans
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Plans that are related to contingency plans include Business Continuity Plans, Disaster Recovery Plans, Critical Infrastructure Plans, Continuity of Operations Plans, Crisis Communications Plans, Insider Threat Implementation Plans, Data Breach Response Plans, Cyber Incident Response Plans, Breach Response Plans, and Occupant Emergency Plans.
  GUIDANCE
  tag nist: ['CP-2 (1)']
  tag control: 'CP-2 (1)'
  tag objective: 'CP-02(01)'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cp_2_1: true

  describe 'NIST SP 800-53A Rev 5 objective CP-02(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
