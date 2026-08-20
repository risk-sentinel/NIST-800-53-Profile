control 'SC-8 (3)' do
  impact 0.5
  title 'Cryptographic Protection for Message Externals'
  desc <<~DESC
    Implement cryptographic mechanisms to protect message externals unless otherwise protected by #{input('sc_08_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-08(03) cryptographic mechanisms are implemented to protect message externals unless otherwise protected by #{input('sc_08_03_odp')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing transmission confidentiality and integrity; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer
      TEST: Cryptographic mechanisms supporting and/or implementing transmission confidentiality and/or integrity for message externals; mechanisms supporting and/or implementing alternative physical safeguards; organizational processes for defining and implementing alternative physical safeguards
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Cryptographic protection for message externals addresses protection from the unauthorized disclosure of information. Message externals include message headers and routing information. Cryptographic protection prevents the exploitation of message externals and applies to internal and external networks or links that may be visible to individuals who are not authorized users. Header and routing information is sometimes transmitted in clear text (i.e., unencrypted) because the information is not identified by organizations as having significant value or because encrypting the information can result in lower network performance or higher costs. Alternative physical controls include protected distribution systems.
  GUIDANCE
  tag nist: ['SC-8 (3)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_08_03_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-8 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
