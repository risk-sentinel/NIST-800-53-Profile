control 'SI-02(03)(a)' do
  impact 0.5
  title "the time between flaw identification and flaw remediation is measured;"
  desc <<~DESC
    (a) Measure the time between flaw identification and flaw remediation; and
    (b) Establish the following benchmarks for taking corrective actions: #{input('si_02_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the time between flaw identification and flaw remediation is measured;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing flaw remediation; system design documentation; system configuration settings and associated documentation; list of benchmarks for taking corrective action on identified flaws; records that provide timestamps of flaw identification and subsequent flaw remediation activities; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for flaw remediation
      TEST: Organizational processes for identifying, reporting, and correcting system flaws; mechanisms used to measure the time between flaw identification and flaw remediation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations determine the time it takes on average to correct system flaws after such flaws have been identified and subsequently establish organizational benchmarks (i.e., time frames) for taking corrective actions. Benchmarks can be established by the type of flaw or the severity of the potential vulnerability if the flaw can be exploited.
  GUIDANCE
  tag nist: ['SI-2 (3)']
  tag control: 'SI-2 (3)'
  tag objective: 'SI-02(03)(a)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_2_3: true
  tag odp: %w{si_02_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-02(03)(a)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
