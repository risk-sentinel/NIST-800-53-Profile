control 'CP-06(02)[01]' do
  impact 0.5
  title "the alternate storage site is configured to facilitate recovery operations in accordance with recovery time objectives;"
  desc <<~DESC
    Configure the alternate storage site to facilitate recovery operations in accordance with recovery time and recovery point objectives.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the alternate storage site is configured to facilitate recovery operations in accordance with recovery time objectives;

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing alternate storage sites; contingency plan; alternate storage site; alternate storage site agreements; alternate storage site configurations; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency plan testing responsibilities; organizational personnel with responsibilities for testing related plans; organizational personnel with information security responsibilities
      TEST: Organizational processes for contingency plan testing; mechanisms supporting recovery time and point objectives
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations establish recovery time and recovery point objectives as part of contingency planning. Configuration of the alternate storage site includes physical facilities and the systems supporting recovery operations that ensure accessibility and correct execution.
  GUIDANCE
  tag nist: ['CP-6 (2)']
  tag control: 'CP-6 (2)'
  tag objective: 'CP-06(02)[01]'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_cp_6_2: true

  describe 'NIST SP 800-53A Rev 5 objective CP-06(02)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
