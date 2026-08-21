control 'SA-05b.03[01]' do
  impact 0.5
  title "user documentation for the system, system component, or system service that describes user responsibilities for maintaining the security of the system, component, or service is obtained or developed;"
  desc <<~DESC
    a. Obtain or develop administrator documentation for the system, system component, or system service that describes:
      1. Secure configuration, installation, and operation of the system, component, or service;
      2. Effective use and maintenance of security and privacy functions and mechanisms; and
      3. Known vulnerabilities regarding configuration and use of administrative or privileged functions;
    b. Obtain or develop user documentation for the system, system component, or system service that describes:
      1. User-accessible security and privacy functions and mechanisms and how to effectively use those functions and mechanisms;
      2. Methods for user interaction, which enables individuals to use the system, component, or service in a more secure manner and protect individual privacy; and
      3. User responsibilities in maintaining the security of the system, component, or service and privacy of individuals;
    c. Document attempts to obtain system, system component, or system service documentation when such documentation is either unavailable or nonexistent and take #{input('sa_05_odp_01')} in response; and
    d. Distribute documentation to #{input('sa_05_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      user documentation for the system, system component, or system service that describes user responsibilities for maintaining the security of the system, component, or service is obtained or developed;

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing system documentation; system documentation, including administrator and user guides; system design documentation; records documenting attempts to obtain unavailable or nonexistent system documentation; list of actions to be taken in response to documented attempts to obtain system, system component, or system service documentation; risk management strategy documentation; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition/contracting responsibilities; organizational personnel with information security and privacy responsibilities; system administrators; organizational personnel responsible for operating, using, and/or maintaining the system; system developers
      TEST: Organizational processes for obtaining, protecting, and distributing system administrator and user documentation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System artifacts and documentation created by the developer helps organizational personnel understand the implementation and operation of controls. Organizations consider establishing specific measures to determine the quality and completeness of the content provided. System documentation may be used to delineate roles, responsibilities and expectations of the developer and organization, support the management of supply chain risk, incident response, flaw remediation, and other functions. Personnel or roles that require documentation include system owners, system security officers, and system administrators. Attempts to obtain documentation include contacting manufacturers or suppliers and conducting web-based searches. The inability to obtain documentation may occur due to the age of the system or component or the lack of support from developers and contractors. When documentation cannot be obtained, organizations may need to recreate the documentation if it is essential to the implementation or operation of the controls. The protection provided for the documentation is commensurate with the security category or classification of the system. Documentation that addresses system vulnerabilities may require an increased level of protection. Secure operation of the system includes initially starting the system and resuming secure system operation after a lapse in system operation. An example of least privilege in software development is minimizing the functions that operate with elevated privileges (e.g., limiting the tools and functionality that operate in kernel mode)
  GUIDANCE
  tag nist: ['SA-5']
  tag control: 'SA-5'
  tag objective: 'SA-05b.03[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sa_5: true
  tag odp: %w{sa_05_odp_01 sa_05_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective SA-05b.03[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
