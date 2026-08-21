control 'IR-02(01)' do
  impact 0.5
  title "simulated events are incorporated into incident response training to facilitate the required response by personnel in crisis situations."
  desc <<~DESC
    Incorporate simulated events into incident response training to facilitate the required response by personnel in crisis situations.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      simulated events are incorporated into incident response training to facilitate the required response by personnel in crisis situations.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident response training; incident response training curriculum; incident response training materials; incident response plan; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response training and operational responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Mechanisms that support and/or implement simulated events for incident response training
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations establish requirements for responding to incidents in incident response plans. Incorporating simulated events into incident response training helps to ensure that personnel understand their individual responsibilities and what specific actions to take in crisis situations.
  GUIDANCE
  tag nist: ['IR-2 (1)']
  tag control: 'IR-2 (1)'
  tag objective: 'IR-02(01)'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_ir_2_1: true

  describe 'NIST SP 800-53A Rev 5 objective IR-02(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
