control 'IA-2 (13)' do
  impact 0.5
  title 'Out-of-band Authentication'
  desc <<~DESC
    Implement the following out-of-band authentication mechanisms under #{input('ia_02_13_odp_02')}: #{input('ia_02_13_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-02(13) #{input('ia_02_13_odp_01')} mechanisms are implemented under #{input('ia_02_13_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; procedures addressing user identification and authentication; system design documentation; system configuration settings and associated documentation; system audit records; system-generated list of out-of-band authentication paths; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with account management responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms supporting and/or implementing out-of-band authentication capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Out-of-band authentication refers to the use of two separate communication paths to identify and authenticate users or devices to an information system. The first path (i.e., the in-band path) is used to identify and authenticate users or devices and is generally the path through which information flows. The second path (i.e., the out-of-band path) is used to independently verify the authentication and/or requested action. For example, a user authenticates via a notebook computer to a remote server to which the user desires access and requests some action of the server via that communication path. Subsequently, the server contacts the user via the user’s cell phone to verify that the requested action originated from the user. The user may confirm the intended action to an individual on the telephone or provide an authentication code via the telephone. Out-of-band authentication can be used to mitigate actual or suspected "man-in the-middle" attacks. The conditions or criteria for activation include suspicious activities, new threat indicators, elevated threat levels, or the impact or classification level of information in requested transactions.
  GUIDANCE
  tag nist: ['IA-2 (13)']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag odp: %w{ia_02_13_odp_01 ia_02_13_odp_02}

  describe 'NIST SP 800-53 Rev 5 control IA-2 (13)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
