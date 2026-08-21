control 'IA-05(09)' do
  impact 0.5
  title "#{input('ia_05_09_odp')} are used to federate credentials."
  desc <<~DESC
    Use the following external organizations to federate credentials: #{input('ia_05_09_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ia_05_09_odp')} are used to federate credentials.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing authenticator management; procedures addressing account management; system security plan; security agreements; other relevant documents or records
      INTERVIEW: Organizational personnel with authenticator management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms supporting and/or implementing safeguards for authenticator management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Federation provides organizations with the capability to authenticate individuals and devices when conducting cross-organization activities involving the processing, storage, or transmission of information. Using a specific list of approved external organizations for authentication helps to ensure that those organizations are vetted and trusted.
  GUIDANCE
  tag nist: ['IA-5 (9)']
  tag control: 'IA-5 (9)'
  tag objective: 'IA-05(09)'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag control_ia_5_9: true
  tag odp: %w{ia_05_09_odp}

  describe 'NIST SP 800-53A Rev 5 objective IA-05(09)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
