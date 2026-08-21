control 'CP-06(01)' do
  impact 0.5
  title "an alternate storage site that is sufficiently separated from the primary storage site is identified to reduce susceptibility to the same threats."
  desc <<~DESC
    Identify an alternate storage site that is sufficiently separated from the primary storage site to reduce susceptibility to the same threats.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      an alternate storage site that is sufficiently separated from the primary storage site is identified to reduce susceptibility to the same threats.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing alternate storage sites; contingency plan; alternate storage site; alternate storage site agreements; primary storage site agreements; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency plan alternate storage site responsibilities; organizational personnel with system recovery responsibilities; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Threats that affect alternate storage sites are defined in organizational risk assessments and include natural disasters, structural failures, hostile attacks, and errors of omission or commission. Organizations determine what is considered a sufficient degree of separation between primary and alternate storage sites based on the types of threats that are of concern. For threats such as hostile attacks, the degree of separation between sites is less relevant.
  GUIDANCE
  tag nist: ['CP-6 (1)']
  tag control: 'CP-6 (1)'
  tag objective: 'CP-06(01)'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cp_6_1: true

  describe 'NIST SP 800-53A Rev 5 objective CP-06(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
