control 'SI-22a.' do
  impact 0.5
  title "#{input('si_22_odp_01')} for #{input('si_22_odp_02')} are identified;"
  desc <<~DESC
    a. Identify the following alternative sources of information for #{input('si_22_odp_02')}: #{input('si_22_odp_01')} ; and
    b. Use an alternative information source for the execution of essential functions or services on #{input('si_22_odp_03')} when the primary source of information is corrupted or unavailable.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('si_22_odp_01')} for #{input('si_22_odp_02')} are identified;

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; system design documentation; system configuration settings and associated documentation; list of information sources; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy responsibilities; organizational personnel with systems security engineering responsibilities; system developers
      TEST: Automated methods and mechanisms to convert information from an analog to digital medium
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Actions taken by a system service or a function are often driven by the information it receives. Corruption, fabrication, modification, or deletion of that information could impact the ability of the service function to properly carry out its intended actions. By having multiple sources of input, the service or function can continue operation if one source is corrupted or no longer available. It is possible that the alternative sources of information may be less precise or less accurate than the primary source of information. But having such sub-optimal information sources may still provide a sufficient level of quality that the essential service or function can be carried out, even in a degraded or debilitated manner.
  GUIDANCE
  tag nist: ['SI-22']
  tag control: 'SI-22'
  tag objective: 'SI-22a.'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_22: true
  tag odp: %w{si_22_odp_01 si_22_odp_02 si_22_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective SI-22a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
