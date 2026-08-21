control 'SI-10(01)(b)' do
  impact 0.5
  title "the use of the manual override capability is restricted to only #{input('si_10_01_odp')};"
  desc <<~DESC
    (a) Provide a manual override capability for input validation of the following information inputs: #{input('si_10_odp')};
    (b) Restrict the use of the manual override capability to only #{input('si_10_01_odp')} ; and
    (c) Audit the use of the manual override capability.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the use of the manual override capability is restricted to only #{input('si_10_01_odp')};

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; access control policy and procedures; separation of duties policy and procedures; procedures addressing information input validation; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for information input validation; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Organizational processes for the use of a manual override capability; mechanisms supporting and/or implementing a manual override capability for input validation; mechanisms supporting and/or implementing auditing of the use of a manual override capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In certain situations, such as during events that are defined in contingency plans, a manual override capability for input validation may be needed. Manual overrides are used only in limited circumstances and with the inputs defined by the organization.
  GUIDANCE
  tag nist: ['SI-10 (1)']
  tag control: 'SI-10 (1)'
  tag objective: 'SI-10(01)(b)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_10_1: true
  tag odp: %w{si_10_01_odp si_10_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-10(01)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
