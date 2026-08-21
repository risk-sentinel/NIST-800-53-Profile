control 'SI-02(06)' do
  impact 0.5
  title "previous versions of #{input('si_02_06_odp')} are removed after updated versions have been installed."
  desc <<~DESC
    Remove previous versions of #{input('si_02_06_odp')} after updated versions have been installed.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      previous versions of #{input('si_02_06_odp')} are removed after updated versions have been installed.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing flaw remediation; mechanisms supporting flaw remediation; system design documentation; system configuration settings and associated documentation; records of software and firmware component removals after updated versions are installed; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for flaw remediation
      TEST: Mechanisms supporting and/or implementing the removal of previous versions of software/firmware
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Previous versions of software or firmware components that are not removed from the system after updates have been installed may be exploited by adversaries. Some products may automatically remove previous versions of software and firmware from the system.
  GUIDANCE
  tag nist: ['SI-2 (6)']
  tag control: 'SI-2 (6)'
  tag objective: 'SI-02(06)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_2_6: true
  tag odp: %w{si_02_06_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-02(06)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
