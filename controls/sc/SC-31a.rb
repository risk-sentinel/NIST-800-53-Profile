control 'SC-31a.' do
  impact 0.5
  title "a covert channel analysis is performed to identify those aspects of communications within the system that are potential avenues for covert #{input('sc_31_odp')} channels;"
  desc <<~DESC
    a. Perform a covert channel analysis to identify those aspects of communications within the system that are potential avenues for covert #{input('sc_31_odp')} channels; and
    b. Estimate the maximum bandwidth of those channels.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      a covert channel analysis is performed to identify those aspects of communications within the system that are potential avenues for covert #{input('sc_31_odp')} channels;

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing covert channel analysis; system design documentation; system configuration settings and associated documentation; covert channel analysis documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with covert channel analysis responsibilities; system developers/integrators
      TEST: Organizational process for conducting covert channel analysis; mechanisms supporting and/or implementing covert channel analysis; mechanisms supporting and/or implementing the capability to estimate the bandwidth of covert channels
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Developers are in the best position to identify potential areas within systems that might lead to covert channels. Covert channel analysis is a meaningful activity when there is the potential for unauthorized information flows across security domains, such as in the case of systems that contain export-controlled information and have connections to external networks (i.e., networks that are not controlled by organizations). Covert channel analysis is also useful for multilevel secure systems, multiple security level systems, and cross-domain systems.
  GUIDANCE
  tag nist: ['SC-31']
  tag control: 'SC-31'
  tag objective: 'SC-31a.'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_31: true
  tag odp: %w{sc_31_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-31a.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
