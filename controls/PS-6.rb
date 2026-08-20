control 'PS-6' do
  impact 0.5
  title 'Access Agreements'
  desc <<~DESC
    a. Develop and document access agreements for organizational systems;
    b. Review and update the access agreements #{input('ps_06_odp_01')} ; and
    c. Verify that individuals requiring access to organizational information and systems:
      1. Sign appropriate access agreements prior to being granted access; and
      2. Re-sign access agreements to maintain access to organizational systems when access agreements have been updated or #{input('ps_06_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PS-06a. access agreements are developed and documented for organizational systems;
      PS-06b. the access agreements are reviewed and updated #{input('ps_06_odp_01')};
      PS-06c.
        PS-06c.01 individuals requiring access to organizational information and systems sign appropriate access agreements prior to being granted access;
        PS-06c.02 individuals requiring access to organizational information and systems re-sign access agreements to maintain access to organizational systems when access agreements have been updated or #{input('ps_06_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Personnel security policy; personnel security procedures; procedures addressing access agreements for organizational information and systems; access control policy; access control procedures; access agreements (including non-disclosure agreements, acceptable use agreements, rules of behavior, and conflict-of-interest agreements); documentation of access agreement reviews, updates, and re-signing; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; organizational personnel who have signed/resigned access agreements; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for reviewing, updating, and re-signing access agreements; mechanisms supporting the reviewing, updating, and re-signing of access agreements
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Access agreements include nondisclosure agreements, acceptable use agreements, rules of behavior, and conflict-of-interest agreements. Signed access agreements include an acknowledgement that individuals have read, understand, and agree to abide by the constraints associated with organizational systems to which access is authorized. Organizations can use electronic signatures to acknowledge access agreements unless specifically prohibited by organizational policy.
  GUIDANCE
  tag nist: ['PS-6']
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag odp: %w{ps_06_odp_01 ps_06_odp_02}

  describe 'NIST SP 800-53 Rev 5 control PS-6' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
