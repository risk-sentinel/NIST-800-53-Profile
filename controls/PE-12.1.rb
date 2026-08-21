control 'PE-12 (1)' do
  impact 0.5
  title 'Essential Mission and Business Functions'
  desc <<~DESC
    Provide emergency lighting for all areas within the facility supporting essential mission and business functions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PE-12(01) emergency lighting is provided for all areas within the facility supporting essential mission and business functions.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing emergency lighting; emergency lighting documentation; emergency lighting test records; emergency exits and evacuation routes; areas/locations within facility supporting essential missions and business functions; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for emergency lighting and/or planning; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing the emergency lighting capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations define their essential missions and functions.
  GUIDANCE
  tag nist: ['PE-12 (1)']
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control PE-12 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
