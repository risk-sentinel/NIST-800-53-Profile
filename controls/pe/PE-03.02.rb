control 'PE-03(02)' do
  impact 0.5
  title "security checks are performed #{input('pe_03_02_odp')} at the physical perimeter of the facility or system for exfiltration of information or removal of system components."
  desc <<~DESC
    Perform security checks #{input('pe_03_02_odp')} at the physical perimeter of the facility or system for exfiltration of information or removal of system components.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      security checks are performed #{input('pe_03_02_odp')} at the physical perimeter of the facility or system for exfiltration of information or removal of system components.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access control; physical access control logs or records; records of security checks; security audit reports; security inspection reports; facility layout documentation; system entry and exit points; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access control responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for physical access control to the facility and/or system; mechanisms supporting and/or implementing physical access control for the facility or system; mechanisms supporting and/or implementing security checks for the unauthorized exfiltration of information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations determine the extent, frequency, and/or randomness of security checks to adequately mitigate risk associated with exfiltration.
  GUIDANCE
  tag nist: ['PE-3 (2)']
  tag control: 'PE-3 (2)'
  tag objective: 'PE-03(02)'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_3_2: true
  tag odp: %w{pe_03_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective PE-03(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
