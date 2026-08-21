control 'SI-02(04)' do
  impact 0.5
  title "automated patch management tools are employed to facilitate flaw remediation to #{input('si_02_04_odp')}."
  desc <<~DESC
    Employ automated patch management tools to facilitate flaw remediation to the following system components: #{input('si_02_04_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      automated patch management tools are employed to facilitate flaw remediation to #{input('si_02_04_odp')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing flaw remediation; mechanisms supporting flaw remediation and automatic software/firmware updates; system design documentation; system configuration settings and associated documentation; list of system flaws; records of recent security-relevant software and firmware updates that are automatically installed to system components; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for flaw remediation
      TEST: Automated patch management tools; mechanisms implementing automatic software/firmware updates; mechanisms facilitating flaw remediation to system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Using automated tools to support patch management helps to ensure the timeliness and completeness of system patching operations.
  GUIDANCE
  tag nist: ['SI-2 (4)']
  tag control: 'SI-2 (4)'
  tag objective: 'SI-02(04)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_2_4: true
  tag odp: %w{si_02_04_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-02(04)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
