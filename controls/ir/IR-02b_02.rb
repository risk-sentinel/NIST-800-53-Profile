control 'IR-02b.[02]' do
  impact 0.5
  title "incident response training content is reviewed and updated following #{input('ir_02_odp_04')}."
  desc <<~DESC
    a. Provide incident response training to system users consistent with assigned roles and responsibilities:
      1. Within #{input('ir_02_odp_01')} of assuming an incident response role or responsibility or acquiring system access;
      2. When required by system changes; and
      3. #{input('ir_02_odp_02')} thereafter; and
    b. Review and update incident response training content #{input('ir_02_odp_03')} and following #{input('ir_02_odp_04')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      incident response training content is reviewed and updated following #{input('ir_02_odp_04')}.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident response training; incident response training curriculum; incident response training materials; privacy plan; incident response plan; incident response training records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response training and operational responsibilities; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Incident response training is associated with the assigned roles and responsibilities of organizational personnel to ensure that the appropriate content and level of detail are included in such training. For example, users may only need to know who to call or how to recognize an incident; system administrators may require additional training on how to handle incidents; and incident responders may receive more specific training on forensics, data collection techniques, reporting, system recovery, and system restoration. Incident response training includes user training in identifying and reporting suspicious activities from external and internal sources. Incident response training for users may be provided as part of [AT-2](#at-2) or [AT-3](#at-3) . Events that may precipitate an update to incident response training content include, but are not limited to, incident response plan testing or response to an actual incident (lessons learned), assessment or audit findings, or changes in applicable laws, executive orders, directives, regulations, policies, standards, and guidelines.
  GUIDANCE
  tag nist: ['IR-2']
  tag control: 'IR-2'
  tag objective: 'IR-02b.[02]'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_ir_2: true
  tag odp: %w{ir_02_odp_01 ir_02_odp_02 ir_02_odp_03 ir_02_odp_04}

  describe 'NIST SP 800-53A Rev 5 objective IR-02b.[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
