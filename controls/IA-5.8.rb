control 'IA-5 (8)' do
  impact 0.5
  title 'Multiple System Accounts'
  desc <<~DESC
    Implement #{input('ia_05_08_odp')} to manage the risk of compromise due to individuals having accounts on multiple systems.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-05(08) #{input('ia_05_08_odp')} are implemented to manage the risk of compromise due to individuals having accounts on multiple systems.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing authenticator management; system security plan; list of individuals having accounts on multiple systems; list of security safeguards intended to manage risk of compromise due to individuals having accounts on multiple systems; other relevant documents or records
      INTERVIEW: Organizational personnel with authenticator management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Mechanisms supporting and/or implementing safeguards for authenticator management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    When individuals have accounts on multiple systems and use the same authenticators such as passwords, there is the risk that a compromise of one account may lead to the compromise of other accounts. Alternative approaches include having different authenticators (passwords) on all systems, employing a single sign-on or federation mechanism, or using some form of one-time passwords on all systems. Organizations can also use rules of behavior (see [PL-4](#pl-4) ) and access agreements (see [PS-6](#ps-6) ) to mitigate the risk of multiple system accounts.
  GUIDANCE
  tag nist: ['IA-5 (8)']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag odp: %w{ia_05_08_odp}

  describe 'NIST SP 800-53 Rev 5 control IA-5 (8)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
