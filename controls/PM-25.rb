control 'PM-25' do
  impact 0.5
  title 'Minimization of Personally Identifiable Information Used in Testing, Training, and Research'
  desc <<~DESC
    a. Develop, document, and implement policies and procedures that address the use of personally identifiable information for internal testing, training, and research;
    b. Limit or minimize the amount of personally identifiable information used for internal testing, training, and research purposes;
    c. Authorize the use of personally identifiable information when such information is required for internal testing, training, and research; and
    d. Review and update policies and procedures #{input('pm_25_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PM-25a.
        PM-25a.[01] policies that address the use of personally identifiable information for internal testing are developed and documented;
        PM-25a.[02] policies that address the use of personally identifiable information for internal training are developed and documented;
        PM-25a.[03] policies that address the use of personally identifiable information for internal research are developed and documented;
        PM-25a.[04] procedures that address the use of personally identifiable information for internal testing are developed and documented;
        PM-25a.[05] procedures that address the use of personally identifiable information for internal training are developed and documented;
        PM-25a.[06] procedures that address the use of personally identifiable information for internal research are developed and documented;
        PM-25a.[07] policies that address the use of personally identifiable information for internal testing, are implemented;
        PM-25a.[08] policies that address the use of personally identifiable information for training are implemented;
        PM-25a.[09] policies that address the use of personally identifiable information for research are implemented;
        PM-25a.[10] procedures that address the use of personally identifiable information for internal testing are implemented;
        PM-25a.[11] procedures that address the use of personally identifiable information for training are implemented;
        PM-25a.[12] procedures that address the use of personally identifiable information for research are implemented;
      PM-25b.
        PM-25b.[01] the amount of personally identifiable information used for internal testing purposes is limited or minimized;
        PM-25b.[02] the amount of personally identifiable information used for internal training purposes is limited or minimized;
        PM-25b.[03] the amount of personally identifiable information used for internal research purposes is limited or minimized;
      PM-25c.
        PM-25c.[01] the required use of personally identifiable information for internal testing is authorized;
        PM-25c.[02] the required use of personally identifiable information for internal training is authorized;
        PM-25c.[03] the required use of personally identifiable information for internal research is authorized;
      PM-25d.
        PM-25d.[01] policies are reviewed #{input('pm_25_odp_01')};
        PM-25d.[02] policies are updated #{input('pm_25_odp_02')};
        PM-25d.[03] procedures are reviewed #{input('pm_25_odp_03')};
        PM-25d.[04] procedures are updated #{input('pm_25_odp_04')}.

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
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag odp: %w{pm_25_odp_01 pm_25_odp_02 pm_25_odp_03 pm_25_odp_04 pm_25_prm_1}

  describe 'NIST SP 800-53 Rev 5 control PM-25' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
