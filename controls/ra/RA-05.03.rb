control 'RA-05(03)' do
  impact 0.5
  title "the breadth and depth of vulnerability scanning coverage are defined."
  desc <<~DESC
    Define the breadth and depth of vulnerability scanning coverage.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the breadth and depth of vulnerability scanning coverage are defined.

    Assessment methods and objects:
      EXAMINE: Procedures addressing vulnerability scanning; assessment report; vulnerability scanning tools and associated configuration documentation; vulnerability scanning results; patch and vulnerability management records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with vulnerability scanning responsibilities; organizational personnel with vulnerability scan analysis responsibilities; organizational personnel with security responsibilities
      TEST: Organizational processes for vulnerability scanning; mechanisms/tools supporting and/or implementing vulnerability scanning
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The breadth of vulnerability scanning coverage can be expressed as a percentage of components within the system, by the particular types of systems, by the criticality of systems, or by the number of vulnerabilities to be checked. Conversely, the depth of vulnerability scanning coverage can be expressed as the level of the system design that the organization intends to monitor (e.g., component, module, subsystem, element). Organizations can determine the sufficiency of vulnerability scanning coverage with regard to its risk tolerance and other factors. Scanning tools and how the tools are configured may affect the depth and coverage. Multiple scanning tools may be needed to achieve the desired depth and coverage. [SP 800-53A](#a21aef46-7330-48a0-b2e1-c5bb8b2dd11d) provides additional information on the breadth and depth of coverage.
  GUIDANCE
  tag nist: ['RA-5 (3)']
  tag control: 'RA-5 (3)'
  tag objective: 'RA-05(03)'
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{}
  tag control_ra_5_3: true

  describe 'NIST SP 800-53A Rev 5 objective RA-05(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
