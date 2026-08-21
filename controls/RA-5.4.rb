control 'RA-5 (4)' do
  impact 0.5
  title 'Discoverable Information'
  desc <<~DESC
    Determine information about the system that is discoverable and take #{input('ra_05_04_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      RA-05(04)[01] information about the system is discoverable;
      RA-05(04)[02] #{input('ra_05_04_odp')} are taken when information about the system is confirmed as discoverable.

    Assessment methods and objects:
      EXAMINE: Procedures addressing vulnerability scanning; assessment report; penetration test results; vulnerability scanning results; risk assessment report; records of corrective actions taken; incident response records; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with vulnerability scanning and/or penetration testing responsibilities; organizational personnel with vulnerability scan analysis responsibilities; organizational personnel responsible for risk response; organizational personnel responsible for incident management and response; organizational personnel with security responsibilities
      TEST: Organizational processes for vulnerability scanning; organizational processes for risk response; organizational processes for incident management and response; mechanisms/tools supporting and/or implementing vulnerability scanning; mechanisms supporting and/or implementing risk response; mechanisms supporting and/or implementing incident management and response
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Discoverable information includes information that adversaries could obtain without compromising or breaching the system, such as by collecting information that the system is exposing or by conducting extensive web searches. Corrective actions include notifying appropriate organizational personnel, removing designated information, or changing the system to make the designated information less relevant or attractive to adversaries. This enhancement excludes intentionally discoverable information that may be part of a decoy capability (e.g., honeypots, honeynets, or deception nets) deployed by the organization.
  GUIDANCE
  tag nist: ['RA-5 (4)']
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag odp: %w{ra_05_04_odp}

  describe 'NIST SP 800-53 Rev 5 control RA-5 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
