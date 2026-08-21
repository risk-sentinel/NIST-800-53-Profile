control 'SA-02a.[02]' do
  impact 0.5
  title "the high-level privacy requirements for the system or system service are determined in mission and business process planning;"
  desc <<~DESC
    a. Determine the high-level information security and privacy requirements for the system or system service in mission and business process planning;
    b. Determine, document, and allocate the resources required to protect the system or system service as part of the organizational capital planning and investment control process; and
    c. Establish a discrete line item for information security and privacy in organizational programming and budgeting documentation.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the high-level privacy requirements for the system or system service are determined in mission and business process planning;

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; system and services acquisition strategy and plans; procedures addressing the allocation of resources to information security and privacy requirements; procedures addressing capital planning and investment control; organizational programming and budgeting documentation; system security plan; privacy plan; supply chain risk management policy; other relevant documents or records
      INTERVIEW: Organizational personnel with capital planning, investment control, organizational programming, and budgeting responsibilities; organizational personnel with information security and privacy responsibilities; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for determining information security and privacy requirements; organizational processes for capital planning, programming, and budgeting; mechanisms supporting and/or implementing organizational capital planning, programming, and budgeting
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Resource allocation for information security and privacy includes funding for system and services acquisition, sustainment, and supply chain-related risks throughout the system development life cycle.
  GUIDANCE
  tag nist: ['SA-2']
  tag control: 'SA-2'
  tag objective: 'SA-02a.[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_sa_2: true

  describe 'NIST SP 800-53A Rev 5 objective SA-02a.[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
