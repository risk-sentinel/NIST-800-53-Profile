control 'CP-03(01)' do
  impact 0.5
  title "simulated events are incorporated into contingency training to facilitate effective response by personnel in crisis situations."
  desc <<~DESC
    Incorporate simulated events into contingency training to facilitate effective response by personnel in crisis situations.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      simulated events are incorporated into contingency training to facilitate effective response by personnel in crisis situations.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing contingency training; contingency plan; contingency training curriculum; contingency training material; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency planning, plan implementation, and training responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for contingency training; mechanisms for simulating contingency events
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The use of simulated events creates an environment for personnel to experience actual threat events, including cyber-attacks that disable websites, ransomware attacks that encrypt organizational data on servers, hurricanes that damage or destroy organizational facilities, or hardware or software failures.
  GUIDANCE
  tag nist: ['CP-3 (1)']
  tag control: 'CP-3 (1)'
  tag objective: 'CP-03(01)'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_cp_3_1: true

  describe 'NIST SP 800-53A Rev 5 objective CP-03(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
