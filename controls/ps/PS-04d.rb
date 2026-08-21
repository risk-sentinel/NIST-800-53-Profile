control 'PS-04d.' do
  impact 0.5
  title "upon termination of individual employment, all security-related organizational system-related property is retrieved;"
  desc <<~DESC
    Upon termination of individual employment:
      a. Disable system access within #{input('ps_04_odp_01')};
      b. Terminate or revoke any authenticators and credentials associated with the individual;
      c. Conduct exit interviews that include a discussion of #{input('ps_04_odp_02')};
      d. Retrieve all security-related organizational system-related property; and
      e. Retain access to organizational information and systems formerly controlled by terminated individual.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      upon termination of individual employment, all security-related organizational system-related property is retrieved;

    Assessment methods and objects:
      EXAMINE: Personnel security policy; procedures addressing personnel termination; records of personnel termination actions; list of system accounts; records of terminated or revoked authenticators/credentials; records of exit interviews; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; organizational personnel with account management responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Organizational processes for personnel termination; mechanisms supporting and/or implementing personnel termination notifications; mechanisms for disabling system access/revoking authenticators
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System property includes hardware authentication tokens, system administration technical manuals, keys, identification cards, and building passes. Exit interviews ensure that terminated individuals understand the security constraints imposed by being former employees and that proper accountability is achieved for system-related property. Security topics at exit interviews include reminding individuals of nondisclosure agreements and potential limitations on future employment. Exit interviews may not always be possible for some individuals, including in cases related to the unavailability of supervisors, illnesses, or job abandonment. Exit interviews are important for individuals with security clearances. The timely execution of termination actions is essential for individuals who have been terminated for cause. In certain situations, organizations consider disabling the system accounts of individuals who are being terminated prior to the individuals being notified.
  GUIDANCE
  tag nist: ['PS-4']
  tag control: 'PS-4'
  tag objective: 'PS-04d.'
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ps_4: true
  tag odp: %w{ps_04_odp_01 ps_04_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PS-04d.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
