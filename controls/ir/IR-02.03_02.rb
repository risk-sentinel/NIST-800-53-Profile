control 'IR-02(03)[02]' do
  impact 0.5
  title "incident response training on the organization’s process for reporting a breach is provided."
  desc <<~DESC
    Provide incident response training on how to identify and respond to a breach, including the organization’s process for reporting a breach.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      incident response training on the organization’s process for reporting a breach is provided.

    Assessment methods and objects:
      EXAMINE: Incident response policy; contingency planning policy; procedures addressing incident response testing; procedures addressing contingency plan testing; incident response testing material; incident response test results; incident response test plan; incident response plan; contingency plan; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response training responsibilities; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    For federal agencies, an incident that involves personally identifiable information is considered a breach. A breach results in the loss of control, compromise, unauthorized disclosure, unauthorized acquisition, or a similar occurrence where a person other than an authorized user accesses or potentially accesses personally identifiable information or an authorized user accesses or potentially accesses such information for other than authorized purposes. The incident response training emphasizes the obligation of individuals to report both confirmed and suspected breaches involving information in any medium or form, including paper, oral, and electronic. Incident response training includes tabletop exercises that simulate a breach. See [IR-2(1)](#ir-2.1).
  GUIDANCE
  tag nist: ['IR-2 (3)']
  tag control: 'IR-2 (3)'
  tag objective: 'IR-02(03)[02]'
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_ir_2_3: true

  describe 'NIST SP 800-53A Rev 5 objective IR-02(03)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
