control 'PE-06b.[01]' do
  impact 0.5
  title "physical access logs are reviewed #{input('pe_06_odp_01')};"
  desc <<~DESC
    a. Monitor physical access to the facility where the system resides to detect and respond to physical security incidents;
    b. Review physical access logs #{input('pe_06_odp_01')} and upon occurrence of #{input('pe_06_odp_02')} ; and
    c. Coordinate results of reviews and investigations with the organizational incident response capability.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      physical access logs are reviewed #{input('pe_06_odp_01')};

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access monitoring; physical access logs or records; physical access monitoring records; physical access log reviews; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access monitoring responsibilities; organizational personnel with incident response responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for monitoring physical access; mechanisms supporting and/or implementing physical access monitoring; mechanisms supporting and/or implementing the review of physical access logs
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Physical access monitoring includes publicly accessible areas within organizational facilities. Examples of physical access monitoring include the employment of guards, video surveillance equipment (i.e., cameras), and sensor devices. Reviewing physical access logs can help identify suspicious activity, anomalous events, or potential threats. The reviews can be supported by audit logging controls, such as [AU-2](#au-2) , if the access logs are part of an automated system. Organizational incident response capabilities include investigations of physical security incidents and responses to the incidents. Incidents include security violations or suspicious physical access activities. Suspicious physical access activities include accesses outside of normal work hours, repeated accesses to areas not normally accessed, accesses for unusual lengths of time, and out-of-sequence accesses.
  GUIDANCE
  tag nist: ['PE-6']
  tag control: 'PE-6'
  tag objective: 'PE-06b.[01]'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_pe_6: true
  tag odp: %w{pe_06_odp_01 pe_06_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective PE-06b.[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
