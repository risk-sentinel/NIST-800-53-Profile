control 'CP-07(06)[02]' do
  impact 0.5
  title "circumstances that preclude returning to the primary processing site are prepared for."
  desc <<~DESC
    Plan and prepare for circumstances that preclude returning to the primary processing site.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      circumstances that preclude returning to the primary processing site are prepared for.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing alternate processing sites; contingency plan; alternate processing site; alternate processing site agreements; alternate processing site configurations; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system reconstitution responsibilities; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    There may be situations that preclude an organization from returning to the primary processing site such as if a natural disaster (e.g., flood or a hurricane) damaged or destroyed a facility and it was determined that rebuilding in the same location was not prudent.
  GUIDANCE
  tag nist: ['CP-7 (6)']
  tag control: 'CP-7 (6)'
  tag objective: 'CP-07(06)[02]'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{}
  tag control_cp_7_6: true

  describe 'NIST SP 800-53A Rev 5 objective CP-07(06)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
