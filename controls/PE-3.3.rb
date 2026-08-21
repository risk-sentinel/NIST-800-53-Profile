control 'PE-3 (3)' do
  impact 0.5
  title 'Continuous Guards'
  desc <<~DESC
    Employ guards to control #{input('pe_03_03_odp')} to the facility where the system resides 24 hours per day, 7 days per week.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PE-03(03) guards are employed to control #{input('pe_03_03_odp')} to the facility where the system resides 24 hours per day, 7 days per week.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access control; physical access control logs or records; physical access control devices; facility surveillance records; facility layout documentation; system entry and exit points; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access control responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for physical access control to the facility where the system resides; mechanisms supporting and/or implementing physical access control for the facility where the system resides
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Employing guards at selected physical access points to the facility provides a more rapid response capability for organizations. Guards also provide the opportunity for human surveillance in areas of the facility not covered by video surveillance.
  GUIDANCE
  tag nist: ['PE-3 (3)']
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag odp: %w{pe_03_03_odp}

  describe 'NIST SP 800-53 Rev 5 control PE-3 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
