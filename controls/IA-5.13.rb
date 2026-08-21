control 'IA-5 (13)' do
  impact 0.5
  title 'Expiration of Cached Authenticators'
  desc <<~DESC
    Prohibit the use of cached authenticators after #{input('ia_05_13_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-05(13) the use of cached authenticators is prohibited after #{input('ia_05_13_odp')}.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing authenticator management; system security plan; system design documentation; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with authenticator management responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms supporting and/or implementing authenticator management capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Cached authenticators are used to authenticate to the local machine when the network is not available. If cached authentication information is out of date, the validity of the authentication information may be questionable.
  GUIDANCE
  tag nist: ['IA-5 (13)']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag odp: %w{ia_05_13_odp}

  describe 'NIST SP 800-53 Rev 5 control IA-5 (13)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
