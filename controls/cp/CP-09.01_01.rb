control 'CP-09(01)[01]' do
  impact 0.5
  title "backup information is tested #{input('cp_09_01_odp_01')} to verify media reliability;"
  desc <<~DESC
    Test backup information #{input('cp_9_1_prm_1')} to verify media reliability and information integrity.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      backup information is tested #{input('cp_09_01_odp_01')} to verify media reliability;

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing system backup; contingency plan; system backup test results; contingency plan test documentation; contingency plan test results; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system backup responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for conducting system backups; mechanisms supporting and/or implementing system backups
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations need assurance that backup information can be reliably retrieved. Reliability pertains to the systems and system components where the backup information is stored, the operations used to retrieve the information, and the integrity of the information being retrieved. Independent and specialized tests can be used for each of the aspects of reliability. For example, decrypting and transporting (or transmitting) a random sample of backup files from the alternate storage or backup site and comparing the information to the same information at the primary processing site can provide such assurance.
  GUIDANCE
  tag nist: ['CP-9 (1)']
  tag control: 'CP-9 (1)'
  tag objective: 'CP-09(01)[01]'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cp_9_1: true
  tag odp: %w{cp_09_01_odp_01 cp_9_1_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective CP-09(01)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
