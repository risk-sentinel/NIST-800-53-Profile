control 'PE-13 (4)' do
  impact 0.5
  title 'Inspections'
  desc <<~DESC
    Ensure that the facility undergoes #{input('pe_13_04_odp_01')} fire protection inspections by authorized and qualified inspectors and identified deficiencies are resolved within #{input('pe_13_04_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PE-13(04)[01] the facility undergoes fire protection inspections #{input('pe_13_04_odp_01')} by authorized and qualified inspectors;
      PE-13(04)[02] the identified deficiencies from fire protection inspections are resolved within #{input('pe_13_04_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing fire protection; facility housing the system; inspection plans; inspection results; inspect reports; test records of fire suppression and detection devices/systems; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for planning, approving, and executing fire inspections; organizational personnel with information security responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Authorized and qualified personnel within the jurisdiction of the organization include state, county, and city fire inspectors and fire marshals. Organizations provide escorts during inspections in situations where the systems that reside within the facilities contain sensitive information.
  GUIDANCE
  tag nist: ['PE-13 (4)']
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag odp: %w{pe_13_04_odp_01 pe_13_04_odp_02}

  describe 'NIST SP 800-53 Rev 5 control PE-13 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
