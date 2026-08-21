control 'AC-02(06)' do
  impact 0.5
  title "#{input('ac_02_06_odp')} are implemented."
  desc <<~DESC
    Implement #{input('ac_02_06_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ac_02_06_odp')} are implemented.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing account management; system design documentation; system configuration settings and associated documentation; system-generated list of dynamic privilege management capabilities; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with account management responsibilities; system/network administrators; organizational personnel with information security responsibilities; system developers
      TEST: system or mechanisms implementing dynamic privilege management capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In contrast to access control approaches that employ static accounts and predefined user privileges, dynamic access control approaches rely on runtime access control decisions facilitated by dynamic privilege management, such as attribute-based access control. While user identities remain relatively constant over time, user privileges typically change more frequently based on ongoing mission or business requirements and the operational needs of organizations. An example of dynamic privilege management is the immediate revocation of privileges from users as opposed to requiring that users terminate and restart their sessions to reflect changes in privileges. Dynamic privilege management can also include mechanisms that change user privileges based on dynamic rules as opposed to editing specific user profiles. Examples include automatic adjustments of user privileges if they are operating out of their normal work times, if their job function or assignment changes, or if systems are under duress or in emergency situations. Dynamic privilege management includes the effects of privilege changes, for example, when there are changes to encryption keys used for communications.
  GUIDANCE
  tag nist: ['AC-2 (6)']
  tag control: 'AC-2 (6)'
  tag objective: 'AC-02(06)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_2_6: true
  tag odp: %w{ac_02_06_odp}

  describe 'NIST SP 800-53A Rev 5 objective AC-02(06)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
