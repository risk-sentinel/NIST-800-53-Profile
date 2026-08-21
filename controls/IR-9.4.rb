control 'IR-9 (4)' do
  impact 0.5
  title 'Exposure to Unauthorized Personnel'
  desc <<~DESC
    Employ the following controls for personnel exposed to information not within assigned access authorizations: #{input('ir_09_04_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IR-09(04) #{input('ir_09_04_odp')} are employed for personnel exposed to information not within assigned access authorizations.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident response; procedures addressing information spillage; incident response plan; system security plan; security safeguards regarding information spillage/exposure to unauthorized personnel; other relevant documents or records
      INTERVIEW: Organizational personnel with incident response responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for dealing with information exposed to unauthorized personnel; mechanisms supporting and/or implementing safeguards for personnel exposed to information not within assigned access authorizations
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Controls include ensuring that personnel who are exposed to spilled information are made aware of the laws, executive orders, directives, regulations, policies, standards, and guidelines regarding the information and the restrictions imposed based on exposure to such information.
  GUIDANCE
  tag nist: ['IR-9 (4)']
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}
  tag odp: %w{ir_09_04_odp}

  describe 'NIST SP 800-53 Rev 5 control IR-9 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
