control 'PS-03a.' do
  impact 0.5
  title "individuals are screened prior to authorizing access to the system;"
  desc <<~DESC
    a. Screen individuals prior to authorizing access to the system; and
    b. Rescreen individuals in accordance with #{input('ps_3_prm_1')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      individuals are screened prior to authorizing access to the system;

    Assessment methods and objects:
      EXAMINE: Personnel security policy; procedures addressing personnel screening; records of screened personnel; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for personnel screening
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Personnel screening and rescreening activities reflect applicable laws, executive orders, directives, regulations, policies, standards, guidelines, and specific criteria established for the risk designations of assigned positions. Examples of personnel screening include background investigations and agency checks. Organizations may define different rescreening conditions and frequencies for personnel accessing systems based on types of information processed, stored, or transmitted by the systems.
  GUIDANCE
  tag nist: ['PS-3']
  tag control: 'PS-3'
  tag objective: 'PS-03a.'
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ps_3: true
  tag odp: %w{ps_3_prm_1}

  describe 'NIST SP 800-53A Rev 5 objective PS-03a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
