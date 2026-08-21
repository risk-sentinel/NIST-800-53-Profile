control 'PE-06(03)(c)' do
  impact 0.5
  title "video recordings are retained for #{input('pe_06_03_odp_03')}."
  desc <<~DESC
    (a) Employ video surveillance of #{input('pe_06_03_odp_01')};
    (b) Review video recordings #{input('pe_06_03_odp_02')} ; and
    (c) Retain video recordings for #{input('pe_06_03_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      video recordings are retained for #{input('pe_06_03_odp_03')}.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access monitoring; video surveillance equipment used to monitor operational areas; video recordings of operational areas where video surveillance is employed; video surveillance equipment logs or records; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access monitoring responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for monitoring physical access; mechanisms supporting and/or implementing physical access monitoring; mechanisms supporting and/or implementing video surveillance
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Video surveillance focuses on recording activity in specified areas for the purposes of subsequent review, if circumstances so warrant. Video recordings are typically reviewed to detect anomalous events or incidents. Monitoring the surveillance video is not required, although organizations may choose to do so. There may be legal considerations when performing and retaining video surveillance, especially if such surveillance is in a public location.
  GUIDANCE
  tag nist: ['PE-6 (3)']
  tag control: 'PE-6 (3)'
  tag objective: 'PE-06(03)(c)'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_6_3: true
  tag odp: %w{pe_06_03_odp_01 pe_06_03_odp_02 pe_06_03_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective PE-06(03)(c)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
