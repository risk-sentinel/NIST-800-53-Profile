control 'PT-06(02)[01]' do
  impact 0.5
  title "all Privacy Act exemptions claimed for the system of records are reviewed #{input('pt_06_02_odp')} to ensure that they remain appropriate and necessary in accordance with law;"
  desc <<~DESC
    Review all Privacy Act exemptions claimed for the system of records at #{input('pt_06_02_odp')} to ensure they remain appropriate and necessary in accordance with law, that they have been promulgated as regulations, and that they are accurately described in the system of records notice.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      all Privacy Act exemptions claimed for the system of records are reviewed #{input('pt_06_02_odp')} to ensure that they remain appropriate and necessary in accordance with law;

    Assessment methods and objects:
      EXAMINE: Personally identifiable information processing and transparency policy and procedures; privacy notice; Privacy Act system of records; Privacy Act exemptions; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with personally identifiable information processing and transparency responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for Privacy Act system of records maintenance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) includes two sets of provisions that allow federal agencies to claim exemptions from certain requirements in the statute. In certain circumstances, these provisions allow agencies to promulgate regulations to exempt a system of records from select provisions of the [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) . At a minimum, organizations’ [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) exemption regulations include the specific name(s) of any system(s) of records that will be exempt, the specific provisions of the [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) from which the system(s) of records is to be exempted, the reasons for the exemption, and an explanation for why the exemption is both necessary and appropriate.
  GUIDANCE
  tag nist: ['PT-6 (2)']
  tag control: 'PT-6 (2)'
  tag objective: 'PT-06(02)[01]'
  tag rev: 'Rev_5'
  tag family: 'Personally Identifiable Information Processing and Transparency'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_pt_6_2: true
  tag odp: %w{pt_06_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective PT-06(02)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
