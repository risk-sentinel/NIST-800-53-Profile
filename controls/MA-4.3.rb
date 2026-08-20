control 'MA-4 (3)' do
  impact 0.5
  title 'Comparable Security and Sanitization'
  desc <<~DESC
    (a) Require that nonlocal maintenance and diagnostic services be performed from a system that implements a security capability comparable to the capability implemented on the system being serviced; or
    (b) Remove the component to be serviced from the system prior to nonlocal maintenance or diagnostic services; sanitize the component (for organizational information); and after the service is performed, inspect and sanitize the component (for potentially malicious software) before reconnecting the component to the system.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MA-04(03)(a)
        MA-04(03)(a)[01] nonlocal maintenance services are required to be performed from a system that implements a security capability comparable to the capability implemented on the system being serviced;
        MA-04(03)(a)[02] nonlocal diagnostic services are required to be performed from a system that implements a security capability comparable to the capability implemented on the system being serviced; or
      MA-04(03)(b)
        MA-04(03)(b)[01] the component to be serviced is removed from the system prior to nonlocal maintenance or diagnostic services;
        MA-04(03)(b)[02] the component to be serviced is sanitized (for organizational information);
        MA-04(03)(b)[03] the component is inspected and sanitized (for potentially malicious software) after the service is performed and before reconnecting the component to the system.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing nonlocal system maintenance; service provider contracts and/or service-level agreements; maintenance records; inspection records; audit records; equipment sanitization records; media sanitization records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; system maintenance provider; organizational personnel with information security responsibilities; organizational personnel responsible for media sanitization; system/network administrators
      TEST: Organizational processes for comparable security and sanitization for nonlocal maintenance; organizational processes for the removal, sanitization, and inspection of components serviced via nonlocal maintenance; mechanisms supporting and/or implementing component sanitization and inspection
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Comparable security capability on systems, diagnostic tools, and equipment providing maintenance services implies that the implemented controls on those systems, tools, and equipment are at least as comprehensive as the controls on the system being serviced.
  GUIDANCE
  tag nist: ['MA-4 (3)']
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{HIGH}
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control MA-4 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
