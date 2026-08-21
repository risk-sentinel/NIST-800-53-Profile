control 'AC-17 (10)' do
  impact 0.5
  title 'Authenticate Remote Commands'
  desc <<~DESC
    Implement #{input('ac_17_10_odp_01')} to authenticate #{input('ac_17_10_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-17(10) #{input('ac_17_10_odp_01')} are implemented to authenticate #{input('ac_17_10_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing authentication of remote commands; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: Mechanisms implementing authentication of remote commands
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Authenticating remote commands protects against unauthorized commands and the replay of authorized commands. The ability to authenticate remote commands is important for remote systems for which loss, malfunction, misdirection, or exploitation would have immediate or serious consequences, such as injury, death, property damage, loss of high value assets, failure of mission or business functions, or compromise of classified or controlled unclassified information. Authentication mechanisms for remote commands ensure that systems accept and execute commands in the order intended, execute only authorized commands, and reject unauthorized commands. Cryptographic mechanisms can be used, for example, to authenticate remote commands.
  GUIDANCE
  tag nist: ['AC-17 (10)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_17_10_odp_01 ac_17_10_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AC-17 (10)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
