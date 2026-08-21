control 'PM-25a.[02]' do
  impact 0.5
  title "policies that address the use of personally identifiable information for internal training are developed and documented;"
  desc <<~DESC
    a. Develop, document, and implement policies and procedures that address the use of personally identifiable information for internal testing, training, and research;
    b. Limit or minimize the amount of personally identifiable information used for internal testing, training, and research purposes;
    c. Authorize the use of personally identifiable information when such information is required for internal testing, training, and research; and
    d. Review and update policies and procedures #{input('pm_25_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      policies that address the use of personally identifiable information for internal training are developed and documented;

    Assessment methods and objects:
      EXAMINE: Privacy program plan; policies and procedures for the minimization of personally identifiable information used in testing, training, and research; documentation supporting policy implementation (e.g., templates for testing, training, and research; privacy threshold analysis; privacy risk assessment); data sets used for testing, training, and research
      INTERVIEW: Organizational personnel with privacy program responsibilities; organizational personnel with privacy responsibilities; system developers; personnel with IRB responsibilities
      TEST: Organizational processes for data quality and personally identifiable information management; mechanisms supporting data quality management and personally identifiable information management to minimize the use of personally identifiable information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The use of personally identifiable information in testing, research, and training increases the risk of unauthorized disclosure or misuse of such information. Organizations consult with the senior agency official for privacy and/or legal counsel to ensure that the use of personally identifiable information in testing, training, and research is compatible with the original purpose for which it was collected. When possible, organizations use placeholder data to avoid exposure of personally identifiable information when conducting testing, training, and research.
  GUIDANCE
  tag nist: ['PM-25']
  tag control: 'PM-25'
  tag objective: 'PM-25a.[02]'
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pm_25: true
  tag odp: %w{pm_25_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective PM-25a.[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
