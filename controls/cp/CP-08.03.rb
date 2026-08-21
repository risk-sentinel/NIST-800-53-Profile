control 'CP-08(03)' do
  impact 0.5
  title "alternate telecommunications services from providers that are separated from primary service providers are obtained to reduce susceptibility to the same threats."
  desc <<~DESC
    Obtain alternate telecommunications services from providers that are separated from primary service providers to reduce susceptibility to the same threats.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      alternate telecommunications services from providers that are separated from primary service providers are obtained to reduce susceptibility to the same threats.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing primary and alternate telecommunications services; contingency plan; primary and alternate telecommunications service agreements; alternate telecommunications service provider site; primary telecommunications service provider site; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency plan telecommunications responsibilities; organizational personnel with system recovery responsibilities; primary and alternate telecommunications service providers; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Threats that affect telecommunications services are defined in organizational assessments of risk and include natural disasters, structural failures, cyber or physical attacks, and errors of omission or commission. Organizations can reduce common susceptibilities by minimizing shared infrastructure among telecommunications service providers and achieving sufficient geographic separation between services. Organizations may consider using a single service provider in situations where the service provider can provide alternate telecommunications services that meet the separation needs addressed in the risk assessment.
  GUIDANCE
  tag nist: ['CP-8 (3)']
  tag control: 'CP-8 (3)'
  tag objective: 'CP-08(03)'
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_cp_8_3: true

  describe 'NIST SP 800-53A Rev 5 objective CP-08(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
