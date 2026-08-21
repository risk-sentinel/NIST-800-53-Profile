control 'SI-23' do
  impact 0.5
  title 'Information Fragmentation'
  desc <<~DESC
    Based on #{input('si_23_odp_01')}:
      a. Fragment the following information: #{input('si_23_odp_02')} ; and
      b. Distribute the fragmented information across the following systems or system components: #{input('si_23_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-23a. under #{input('si_23_odp_01')}, #{input('si_23_odp_02')} is fragmented;
      SI-23b. under #{input('si_23_odp_01')} , the fragmented information is distributed across #{input('si_23_odp_03')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; procedures addressing software and information integrity; system design documentation; system configuration settings and associated documentation; procedures to identify information for fragmentation and distribution across systems/system components; list of distributed and fragmented information; list of circumstances requiring information fragmentation; enterprise architecture; system security architecture; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy responsibilities; organizational personnel with systems security engineering responsibilities; system developers; security architects
      TEST: Organizational processes to identify information for fragmentation and distribution across systems/system components; automated mechanisms supporting and/or implementing information fragmentation and distribution across systems/system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    One objective of the advanced persistent threat is to exfiltrate valuable information. Once exfiltrated, there is generally no way for the organization to recover the lost information. Therefore, organizations may consider dividing the information into disparate elements and distributing those elements across multiple systems or system components and locations. Such actions will increase the adversary’s work factor to capture and exfiltrate the desired information and, in so doing, increase the probability of detection. The fragmentation of information impacts the organization’s ability to access the information in a timely manner. The extent of the fragmentation is dictated by the impact or classification level (and value) of the information, threat intelligence information received, and whether data tainting is used (i.e., data tainting-derived information about the exfiltration of some information could result in the fragmentation of the remaining information).
  GUIDANCE
  tag nist: ['SI-23']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag odp: %w{si_23_odp_01 si_23_odp_02 si_23_odp_03}

  describe 'NIST SP 800-53 Rev 5 control SI-23' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
