control 'CP-09(05)[01]' do
  impact 0.5
  title "system backup information is transferred to the alternate storage site for #{input('cp_09_05_odp_01')};"
  desc <<~DESC
    Transfer system backup information to the alternate storage site #{input('cp_9_5_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      system backup information is transferred to the alternate storage site for #{input('cp_09_05_odp_01')};

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing system backup; contingency plan; system backup logs or records; evidence of system backup information transferred to alternate storage site; alternate storage site agreements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system backup responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for transferring system backups to the alternate storage site; mechanisms supporting and/or implementing system backups; mechanisms supporting and/or implementing information transfer to the alternate storage site
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System backup information can be transferred to alternate storage sites either electronically or by the physical shipment of storage media.
  GUIDANCE
  tag nist: ['CP-9 (5)']
  tag control: 'CP-9 (5)'
  tag objective: 'CP-09(05)[01]'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_cp_9_5: true
  tag odp: %w{cp_09_05_odp_01 cp_9_5_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective CP-09(05)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
