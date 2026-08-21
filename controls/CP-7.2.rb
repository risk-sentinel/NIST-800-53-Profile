control 'CP-7 (2)' do
  impact 0.5
  title 'Accessibility'
  desc <<~DESC
    Identify potential accessibility problems to alternate processing sites in the event of an area-wide disruption or disaster and outlines explicit mitigation actions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-07(02)[01] potential accessibility problems to alternate processing sites in the event of an area-wide disruption or disaster are identified;
      CP-07(02)[02] explicit mitigation actions to address identified accessibility problems are outlined.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing alternate processing sites; contingency plan; alternate processing site; alternate processing site agreements; primary processing site agreements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency plan alternate processing site responsibilities; organizational personnel with system recovery responsibilities; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Area-wide disruptions refer to those types of disruptions that are broad in geographic scope with such determinations made by organizations based on organizational assessments of risk.
  GUIDANCE
  tag nist: ['CP-7 (2)']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control CP-7 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
