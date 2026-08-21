control 'CP-03a.02' do
  impact 0.5
  title "contingency training is provided to system users consistent with assigned roles and responsibilities when required by system changes;"
  desc <<~DESC
    a. Provide contingency training to system users consistent with assigned roles and responsibilities:
      1. Within #{input('cp_03_odp_01')} of assuming a contingency role or responsibility;
      2. When required by system changes; and
      3. #{input('cp_03_odp_02')} thereafter; and
    b. Review and update contingency training content #{input('cp_03_odp_03')} and following #{input('cp_03_odp_04')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      contingency training is provided to system users consistent with assigned roles and responsibilities when required by system changes;

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing contingency training; contingency plan; contingency training curriculum; contingency training material; contingency training records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning, plan implementation, and training responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for contingency training
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Contingency training provided by organizations is linked to the assigned roles and responsibilities of organizational personnel to ensure that the appropriate content and level of detail is included in such training. For example, some individuals may only need to know when and where to report for duty during contingency operations and if normal duties are affected; system administrators may require additional training on how to establish systems at alternate processing and storage sites; and organizational officials may receive more specific training on how to conduct mission-essential functions in designated off-site locations and how to establish communications with other governmental entities for purposes of coordination on contingency-related activities. Training for contingency roles or responsibilities reflects the specific continuity requirements in the contingency plan. Events that may precipitate an update to contingency training content include, but are not limited to, contingency plan testing or an actual contingency (lessons learned), assessment or audit findings, security incidents or breaches, or changes in laws, executive orders, directives, regulations, policies, standards, and guidelines. At the discretion of the organization, participation in a contingency plan test or exercise, including lessons learned sessions subsequent to the test or exercise, may satisfy contingency plan training requirements.
  GUIDANCE
  tag nist: ['CP-3']
  tag control: 'CP-3'
  tag objective: 'CP-03a.02'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cp_3: true
  tag odp: %w{cp_03_odp_01 cp_03_odp_02 cp_03_odp_03 cp_03_odp_04}

  describe 'NIST SP 800-53A Rev 5 objective CP-03a.02' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
